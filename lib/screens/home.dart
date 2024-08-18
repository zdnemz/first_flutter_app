import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Hello World!',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      ElevatedButton(
                          style: ButtonStyle(
                            shape: WidgetStateProperty.all(
                              const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                            backgroundColor:
                                WidgetStateProperty.all(Colors.amber),
                          ),
                          onPressed: () {
                            setState(() {
                              counter++;
                            });
                          },
                          child: const Text(
                            "Pencet Saya",
                            style: TextStyle(color: Colors.black),
                          )),
                      const SizedBox(width: 10),
                      ElevatedButton(
                          style: ButtonStyle(
                            shape: WidgetStateProperty.all(
                              const RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                            ),
                            backgroundColor:
                                WidgetStateProperty.all(Colors.amber),
                          ),
                          onPressed: () {
                            setState(() {
                              counter = 0;
                            });
                          },
                          child: const Text(
                            "Reset",
                            style: TextStyle(color: Colors.black),
                          )),
                    ]),
              ),
              Text("Counter: $counter",
                  style: const TextStyle(fontSize: 20, color: Colors.white))
            ],
          ),
        ),
      ),
    );
  }
}
