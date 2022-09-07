import 'package:flutter/material.dart';

class StreamSample extends StatefulWidget {
  const StreamSample({Key? key}) : super(key: key);

  @override
  State<StreamSample> createState() => _StreamSampleState();
}

class _StreamSampleState extends State<StreamSample> {
  final int price = 2000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        backgroundColor: Colors.blue,
      ),
      body: StreamBuilder<int>(
        initialData: price,
        stream: addStreamValue(),
        builder: (context, snapshot) {
          final priceNumber = snapshot.data.toString();
          return Center(
            child: Text(priceNumber),
          );
        },
      ),
    );
  }

  Stream<int> addStreamValue() {
    return Stream<int>.periodic(
      const Duration(seconds: 1),
      (count) => price + count,
    );
  }
}
