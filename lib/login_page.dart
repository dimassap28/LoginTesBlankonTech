import 'package:flutter/material.dart';
import 'package:testing/landing_page.dart';
import './model/model_login.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _Login();
}

LoginAkses userLogin = LoginAkses();

class _Login extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const TextField(
              decoration: InputDecoration(labelText: 'Userame'),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
            ),
            InkWell(
              onTap: () {
                LoginAkses.conecApi("test@interview.com", "12345678").then(
                  (value) {
                    print(value.firstName);
                    setState(() {
                      userLogin = value;
                      if (userLogin != null) {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Landing()),
                        );
                      } else {
                        print('Belum benar');
                      }
                    });
                  },
                );
              },
              child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                  ),
                  child: const Text("login")),
            )
          ],
        ),
      ),
    );
  }
}
