import 'package:flutter/material.dart';
import 'package:flutter_cash_flow/beranda_page.dart';
import 'package:flutter_cash_flow/beranda_page2.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  Duration get loginTime => Duration(milliseconds: 2250);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 200,
            height: 200,
            child: Image.asset(
              'assets/cash-flow.png',
              fit: BoxFit.contain,
            ),
          ),
          Container(
            child: Text(
              "MyCashBook V1.0",
              style: TextStyle(fontFamily: 'Libre', fontSize: 20),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: 'Username',
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      } else if (value != "fransiska") {
                        return 'Wrong username';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 6),
                  TextFormField(
                    obscureText: true,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      hintText: 'Input password',
                    ),
                    // The validator receives the text that the user has entered.
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter some text';
                      } else if (value != "12345678") {
                        return 'Wrong password';
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: 320,
            child: ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return BerandaPage();
                        },
                      ),
                    );
                  }
                },
                child: const Text("Login")),
          )
        ],
      )),
    );
  }
}
