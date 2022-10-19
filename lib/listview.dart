import 'dart:html';

import 'package:flutter/material.dart';

class ListviewSatu extends StatefulWidget {
  const ListviewSatu({Key? key}) : super(key: key);

  @override
  _ListviewSatuState createState() => _ListviewSatuState();
}

class _ListviewSatuState extends State<ListviewSatu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List View'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SafeArea(
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Flutter Widget: Penggunaan ListView Class',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt, rerum! Delectus, odio eius molestias architecto illum ratione perferendis aut ea dolore animi aliquam saepe quam incidunt nostrum voluptatum suscipit dolor fugiat ut alias! Mollitia asperiores non aspernatur aut alias? Eum sed voluptate vero esse doloremque eos dignissimos velit ex minima est, obcaecati quia similique sequi eveniet, distinctio vitae quos possimus veniam necessitatibus. Quidem nobis consectetur aliquid maiores doloribus vitae odio, nesciunt, voluptatum eaque, nam beatae. Quidem iusto inventore sunt natus id praesentium perferendis itaque vel assumenda sed adipisci enim commodi amet dignissimos, rerum consequatur est distinctio laudantium corrupti quaerat doloremque et magnam eligendi illum? Sint, id natus eos minus illo numquam ex, dicta tempora placeat quis accusamus officiis, neque et voluptate? Repudiandae nulla explicabo optio! Aperiam quod rerum deserunt sit qui, accusantium error aliquid quisquam debitis totam ipsam officiis temporibus, ut quia rem itaque mollitia, a esse doloremque corporis dolorum fugiat. Neque vero sequi enim libero iure sed quae deleniti, nostrum dolorem tenetur ipsum officia doloribus nisi similique mollitia? Assumenda nisi inventore fugit rerum necessitatibus eos dolorem, id culpa impedit eius, quam, numquam ex ipsa quisquam optio molestias incidunt! Adipisci pariatur alias doloribus repudiandae porro eligendi tenetur sunt unde autem harum, labore quis quidem eum, odio illum explicabo nulla qui quisquam placeat dolorem animi! Voluptatum debitis temporibus voluptatem suscipit, nobis quibusdam eveniet assumenda sequi, doloribus accusantium tempore quam! Et nemo officia dolores quia laborum quis vitae nobis similique totam perferendis accusamus ducimus perspiciatis harum repudiandae molestias doloremque quidem vel, optio fugiat maxime voluptas numquam? Sed odio, sit iste culpa quidem officia iusto veniam repudiandae necessitatibus officiis rerum ratione voluptates assumenda natus ab iure modi possimus qui corrupti at vitae? Consectetur numquam quidem, esse tempore, eveniet maxime enim debitis quod deserunt minima porro beatae molestiae odit veritatis dolore, temporibus iure? Non?',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt, rerum! Delectus, odio eius molestias architecto illum ratione perferendis aut ea dolore animi aliquam saepe quam incidunt nostrum voluptatum suscipit dolor fugiat ut alias! Mollitia asperiores non aspernatur aut alias? Eum sed voluptate vero esse doloremque eos dignissimos velit ex minima est, obcaecati quia similique sequi eveniet, distinctio vitae quos possimus veniam necessitatibus. Quidem nobis consectetur aliquid maiores doloribus vitae odio, nesciunt, voluptatum eaque, nam beatae. Quidem iusto inventore sunt natus id praesentium perferendis itaque vel assumenda sed adipisci enim commodi amet dignissimos, rerum consequatur est distinctio laudantium corrupti quaerat doloremque et magnam eligendi illum? Sint, id natus eos minus illo numquam ex, dicta tempora placeat quis accusamus officiis, neque et voluptate? Repudiandae nulla explicabo optio! Aperiam quod rerum deserunt sit qui, accusantium error aliquid quisquam debitis totam ipsam officiis temporibus, ut quia rem itaque mollitia, a esse doloremque corporis dolorum fugiat. Neque vero sequi enim libero iure sed quae deleniti, nostrum dolorem tenetur ipsum officia doloribus nisi similique mollitia? Assumenda nisi inventore fugit rerum necessitatibus eos dolorem, id culpa impedit eius, quam, numquam ex ipsa quisquam optio molestias incidunt! Adipisci pariatur alias doloribus repudiandae porro eligendi tenetur sunt unde autem harum, labore quis quidem eum, odio illum explicabo nulla qui quisquam placeat dolorem animi! Voluptatum debitis temporibus voluptatem suscipit, nobis quibusdam eveniet assumenda sequi, doloribus accusantium tempore quam! Et nemo officia dolores quia laborum quis vitae nobis similique totam perferendis accusamus ducimus perspiciatis harum repudiandae molestias doloremque quidem vel, optio fugiat maxime voluptas numquam? Sed odio, sit iste culpa quidem officia iusto veniam repudiandae necessitatibus officiis rerum ratione voluptates assumenda natus ab iure modi possimus qui corrupti at vitae? Consectetur numquam quidem, esse tempore, eveniet maxime enim debitis quod deserunt minima porro beatae molestiae odit veritatis dolore, temporibus iure? Non?',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(15),
              child: Text(
                'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Incidunt, rerum! Delectus, odio eius molestias architecto illum ratione perferendis aut ea dolore animi aliquam saepe quam incidunt nostrum voluptatum suscipit dolor fugiat ut alias! Mollitia asperiores non aspernatur aut alias? Eum sed voluptate vero esse doloremque eos dignissimos velit ex minima est, obcaecati quia similique sequi eveniet, distinctio vitae quos possimus veniam necessitatibus. Quidem nobis consectetur aliquid maiores doloribus vitae odio, nesciunt, voluptatum eaque, nam beatae. Quidem iusto inventore sunt natus id praesentium perferendis itaque vel assumenda sed adipisci enim commodi amet dignissimos, rerum consequatur est distinctio laudantium corrupti quaerat doloremque et magnam eligendi illum? Sint, id natus eos minus illo numquam ex, dicta tempora placeat quis accusamus officiis, neque et voluptate? Repudiandae nulla explicabo optio! Aperiam quod rerum deserunt sit qui, accusantium error aliquid quisquam debitis totam ipsam officiis temporibus, ut quia rem itaque mollitia, a esse doloremque corporis dolorum fugiat. Neque vero sequi enim libero iure sed quae deleniti, nostrum dolorem tenetur ipsum officia doloribus nisi similique mollitia? Assumenda nisi inventore fugit rerum necessitatibus eos dolorem, id culpa impedit eius, quam, numquam ex ipsa quisquam optio molestias incidunt! Adipisci pariatur alias doloribus repudiandae porro eligendi tenetur sunt unde autem harum, labore quis quidem eum, odio illum explicabo nulla qui quisquam placeat dolorem animi! Voluptatum debitis temporibus voluptatem suscipit, nobis quibusdam eveniet assumenda sequi, doloribus accusantium tempore quam! Et nemo officia dolores quia laborum quis vitae nobis similique totam perferendis accusamus ducimus perspiciatis harum repudiandae molestias doloremque quidem vel, optio fugiat maxime voluptas numquam? Sed odio, sit iste culpa quidem officia iusto veniam repudiandae necessitatibus officiis rerum ratione voluptates assumenda natus ab iure modi possimus qui corrupti at vitae? Consectetur numquam quidem, esse tempore, eveniet maxime enim debitis quod deserunt minima porro beatae molestiae odit veritatis dolore, temporibus iure? Non?',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
