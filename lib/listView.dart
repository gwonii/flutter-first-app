import 'package:flutter/material.dart';

class ListViewApp extends StatelessWidget {
  const ListViewApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: ListViewPage());
  }
}

class ListViewPage extends StatefulWidget {
  const ListViewPage({Key? key}) : super(key: key);

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  var titleList = ['gwonii23', 'dennis', 'norish', 'delish', 'jinu'];

  var imageList = [
    'Resources/profile_1.png',
    'Resources/profile_2.png',
    'Resources/profile_3.png',
    'Resources/profile_4.png',
    'Resources/profile_5.png',
  ];

  var description = [
    '1. There are different types of careers you can pursue in your life, and we can do it mam bro fuck!!!!!!!',
    '2. There are different types of careers you can pursue in your life, and we can do it mam bro fuck!!!!!!!',
    '3. There are different types of careers you can pursue in your life, and we can do it mam bro fuck!!!!!!!',
    '4. There are different types of careers you can pursue in your life, and we can do it mam bro fuck!!!!!!!',
    '5. There are different types of careers you can pursue in your life, and we can do it mam bro fuck!!!!!!!',
  ];

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width * 0.6;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ListView',
          style: TextStyle(color: Colors.grey),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: ListView.builder(
          itemCount: titleList.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                debugPrint(titleList[index]);
              },
              child: Card(
                child: Row(
                  children: [
                    SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.asset(imageList[index]),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(
                            titleList[index],
                            style: const TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: width,
                            child: Text(
                              description[index],
                              style: TextStyle(
                                  fontSize: 15, color: Colors.grey[500]),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
