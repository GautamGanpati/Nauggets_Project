import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GraphPage extends StatefulWidget {
  const GraphPage({super.key});

  @override
  State<GraphPage> createState() => _GraphPageState();
}

class _GraphPageState extends State<GraphPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple[700],
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              CupertinoIcons.back,
              color: Colors.white,
            ),
          ),
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: const Icon(Icons.list_sharp))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 12),
                  child: Row(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 16,
                        width: MediaQuery.of(context).size.width / 7.2,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 3, color: Colors.green),
                            image: const DecorationImage(
                                image: AssetImage("assets/user_img.png"),
                                fit: BoxFit.contain)),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Tommy Berns',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.deepPurple[700]),
                            ),
                            Row(
                              children: [
                                const Text(
                                  'Los Angeles',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: MediaQuery.of(context).size.width / 72,
                                ),
                                Image.asset(
                                  'assets/location_icon.jpg',
                                  height:
                                      MediaQuery.of(context).size.height / 40,
                                  width: MediaQuery.of(context).size.width / 18,
                                )
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 26.667,
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2.667,
                  width: MediaQuery.of(context).size.width / 1.3,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 5, color: Colors.deepPurple),
                  ),
                  child: Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(width: 3, color: Colors.deepPurple),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Align(
                            child: Text(
                          'Balance',
                          style: TextStyle(fontSize: 16),
                        )),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 80,
                        ),
                        const Text(
                          '\$567,57',
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    Image.asset(
                      'assets/green_dot.svg.png',
                      height: MediaQuery.of(context).size.height / 16,
                      width: MediaQuery.of(context).size.width / 7.2,
                    ),
                    const Text(
                      'INCOMES',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    ),
                    Image.asset(
                      'assets/green_dot.svg.png',
                      height: MediaQuery.of(context).size.height / 16,
                      width: MediaQuery.of(context).size.width / 7.2,
                    ),
                    const Text(
                      'EXPENSES',
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 12,
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 18,
                    ),
                    const Text(
                      '309',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 7.5,
                    ),
                    const Text(
                      '234',
                      style:
                          TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 18,
                    ),
                  ],
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 8,
                )
              ]),
        ));
  }
}
