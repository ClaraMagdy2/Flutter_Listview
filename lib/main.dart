import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          centerTitle: true,
          title: const Text(
            'List View',
            style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.w400,
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.blue,
          onPressed: () {
            setState(() {
              ++count;
            });
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: const BorderSide(color: Colors.white, width: 2),
          ),
          child: const Icon(Icons.add, color: Colors.white),
        ),
        body: ListView.separated(
          padding: const EdgeInsets.all(10),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              height: 90,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  const Icon(Icons.person_pin, color: Colors.white, size: 60),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Text(
                      'Item ${index + 1}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),

                  Container(
                    width: 100,
                    height: 90,
                    child: Image.asset('images/animal.jpeg'),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 30);
          },
          itemCount: count,
        ),
      ),
    );
  }
}

