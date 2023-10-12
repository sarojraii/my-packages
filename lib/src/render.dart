import 'package:flutter/material.dart';

class RenderPage extends StatefulWidget {
  const RenderPage({super.key});

  @override
  State<RenderPage> createState() => _RenderPageState();
}

class _RenderPageState extends State<RenderPage> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      titlePadding: const EdgeInsets.all(10),
      title: const Center(
        child: Text(
          'Get up to RS.1000 cashback',
          style: TextStyle(fontSize: 16),
        ),
      ),
      actions: [
        Center(
          child: Container(
            height: 450,
            width: 450,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Container(
              // height: 200,
              // width: 200,
              decoration: BoxDecoration(color: Colors.blue[100]),
              child: Padding(
                padding: const EdgeInsets.only(top: 30, left: 15),
                child: Column(
                  children: [
                    const Row(
                      children: [
                        Text('Enjoy'),
                        Text(
                          '200',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        ),
                        Text('Mbps'),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          '3 months\'',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                        Text(' Internet'),
                      ],
                    ),
                    Row(
                      children: [
                        const Text(
                          'at',
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          height: 30,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Center(
                              child: Text(
                            'Rs. 3,300*',
                            style: TextStyle(color: Colors.yellow),
                          )),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Row(
                      children: [
                        Text('Buy directly from'),
                      ],
                    ),
                    const Row(
                      children: [
                        Text(
                          'WorldLink',
                          style: TextStyle(
                              color: Colors.blue, fontWeight: FontWeight.bold),
                        ),
                        Text(' Website'),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
