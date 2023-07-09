import 'package:flutter/material.dart';
import 'package:flutter_application_1/page/login.dart';
import 'package:flutter_application_1/page/register.dart';

// ignore: camel_case_types
class homepage extends StatelessWidget {
  const homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Regiter/Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(children: [
              Image.asset("assets/images/logo.png"),
              SizedBox(
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const RegisterPage();
                      }));
                    },
                    icon: const Icon(Icons.add),
                    label: const Text(
                      'Regiter User',
                      style: TextStyle(fontSize: 20),
                    )),
              ),
              SizedBox(
                child: ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return const LoginPage();
                      }));
                    },
                    icon: const Icon(Icons.login),
                    label: const Text(
                      'Login User',
                      style: TextStyle(fontSize: 20),
                    )),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
