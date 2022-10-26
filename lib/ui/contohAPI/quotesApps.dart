import 'dart:html';

import 'package:flutter/material.dart';
import 'package:movie_apps/data/model/quotes.dart';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:html/parser.dart';

class QuotesApps extends StatefulWidget {
  const QuotesApps({Key? key}) : super(key: key);

  @override
  _QuotesAppsState createState() => _QuotesAppsState();
}

class _QuotesAppsState extends State<QuotesApps> {

  @override
  Widget build(BuildContext context) {

  List<Quotes> parseQuotes(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<Quotes>((json) => Quotes.fromJson(json)).toList();
  }

  Future<List<Quotes>> fetchQuotes(http.Client client) async {
    final urlApi =
        "https://quotesondesign.com/wp-json/wp/v2/posts/?orderby=rand&filter?posts_per_page=10";
    final response = await client.get(Uri.parse(urlApi));
    if (response.statusCode == 200) {
      return compute(parseQuotes, response.body);
    } else {
      throw Exception('Failed to load quotes');
    }
  }
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return MaterialApp(
      title: 'Quotes Apps',
      theme: ThemeData(fontFamily: 'Montserrat'),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.only(
              top: height / 12,
              bottom: height / 5.5,
            ),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [const Color(0xff368882), const Color(0xff31597d)],
              ),
            ),
            child: Column(
              children: [
                Center(
                  child: Text(
                    'Quotes Apps',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 20.0,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: height / 12,
                  ),
                ),
                FutureBuilder<List<Quotes>>(
                  future: fetchQuotes(http.Client()),
                  builder: (context, snapshot) {
                    if (snapshot.hasError) print(snapshot.error);

                    if (snapshot.hasData) {
                      return _buildQuotesSection(
                          width, height, snapshot.requireData);
                    } else {
                      return Center(
                        child: Column(
                          children: [
                            Text('DATA NOT FOUND', style: TextStyle(color: Colors.white, fontSize: 30),),
                            CircularProgressIndicator(),
                          ],
                        ),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildQuotesSection(
    final double width,
    final double height,
    final List<Quotes> quotes,
  ) {
    String _htmlParsed(String text) {
      var document = parse(text);
      String parsedString = parse(document.body.text).documentElement.text;
      return parsedString;
    }

    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: quotes.length,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(
              right: width / 20,
              left: width / 20,
            ),
            padding: EdgeInsets.all(16.0),
            width: width / 1.1,
            height: height / 5,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.15),
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
            ),
            child: Column(
              children: <Widget>[
                Expanded(
                  child: Text(
                    _htmlParsed(quotes[index].content),
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18.0,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Center(
                  child: Text(
                    quotes[index].title,
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
