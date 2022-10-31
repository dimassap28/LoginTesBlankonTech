import 'package:flutter/material.dart';
import 'package:testing/login_page.dart';

class Landing extends StatefulWidget {
  const Landing({super.key});

  @override
  State<Landing> createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '${userLogin.id}',
              style: const TextStyle(fontSize: 50),
            ),
            const SizedBox(
              height: 20,
            ),
            Text('${userLogin.firstName}',
                style: const TextStyle(fontSize: 50)),
            const SizedBox(
              height: 20,
            ),
            Text('${userLogin.lastName}', style: const TextStyle(fontSize: 50)),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      )),
    );
  }
}
