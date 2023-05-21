import 'package:flutter/material.dart';
import 'package:xencov_project/home_page.dart';
import 'package:http/http.dart' as http;

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  Future<void> signup() async {
    if (emailController.text.isNotEmpty && passwordController.text.isNotEmpty) {
      var response = await http.post(Uri.parse("https://reqres.in/api/login"),
          body: ({
            'email': emailController.text.trim(),
            'password': passwordController.text.trim()
          }));
      if (response.statusCode == 200) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => const HomePage()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Invalid Credentials"),
        ));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Please enter all field"),
      ));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple[700],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.65,
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 30,
                          top: 70,
                        ),
                        child: Text(
                          'Welcome, to sign in continue',
                          textAlign: TextAlign.start,
                          style: TextStyle(color: Colors.white, fontSize: 26),
                        ),
                      ),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(
                                MediaQuery.of(context).size.width / 2.2,
                                MediaQuery.of(context).size.height / 11.43),
                            backgroundColor: Colors.white24),
                        onPressed: () {},
                        child: const Text(
                          'Sign in',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            minimumSize: Size(
                                MediaQuery.of(context).size.width / 2.2,
                                MediaQuery.of(context).size.height / 11.43),
                            backgroundColor: Colors.white24),
                        onPressed: () {},
                        child: const Text(
                          'Sign up',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 17.778,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 12),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Email',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 12,
                      right: MediaQuery.of(context).size.width / 12),
                  child: TextFormField(
                    controller: emailController,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 16,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 12),
                  child: const Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'Password',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: MediaQuery.of(context).size.width / 12,
                      right: MediaQuery.of(context).size.width / 12),
                  child: TextFormField(
                    controller: passwordController,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height / 13.334,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          minimumSize: Size(
                              MediaQuery.of(context).size.width / 2,
                              MediaQuery.of(context).size.height / 16),
                          backgroundColor: Colors.white),
                      onPressed: () {
                        signup();
                      },
                      child: Text(
                        'Sign up',
                        style: TextStyle(
                            fontSize: 22, color: Colors.deepPurple[700]),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: const Text(
                          'Forget your password?',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                        ))
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
