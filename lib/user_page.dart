import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:xencov_project/graph_page.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});

  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            height: MediaQuery.of(context).size.height / 40,
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
            height: MediaQuery.of(context).size.height / 40,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12),
            child: Row(
              children: [
                const Text(
                  'Balance',
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width / 36,
                ),
                const Text(
                  '\$567.57',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width / 72,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 30.0),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.add_circle_outline_sharp,
                      size: 45,
                    )),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: IconButton(
                  onPressed: () {},
                  icon: Image.asset('assets/search-circle-outline.png'),
                  iconSize: 50,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 30.0),
                child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const GraphPage(),
                          ));
                    },
                    icon: const Icon(
                      Icons.bar_chart_outlined,
                      size: 45,
                    )),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 4,
                width: MediaQuery.of(context).size.width / 1.3,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.green),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.green[800],
                            ),
                            child: const Align(
                                child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                'Card',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                            )),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 66.667,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          '3567 55437 9080 5600',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 100,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 55),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: const [
                              Text(
                                'Card Number',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 40,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: const [
                          Text(
                            'Tommy Berns',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                          Text(
                            '35 / 28',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 160,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Text(
                          'Name',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                        Text(
                          'Valid',
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 26.667,
          ),
          ListTile(
            onTap: () {},
            title: const Text(
              "My cards",
            ),
            trailing: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                CupertinoIcons.forward,
                color: Colors.grey,
              ),
            ),
          ),
          const Divider(
            thickness: .5,
            height: 0,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height / 80,
          ),
          ListTile(
            onTap: () {},
            title: const Text(
              "Transactions",
            ),
            trailing: const Padding(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                CupertinoIcons.forward,
                color: Colors.grey,
              ),
            ),
          ),
          const Divider(
            thickness: .5,
            height: 0,
          ),
        ],
      ),
    ));
  }
}
