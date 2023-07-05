import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup_ui/screens/login_signup_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
          backgroundColor:const Color.fromARGB(188, 38, 130, 29),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Home Screen',
                style: GoogleFonts.lobster(
                  color:const Color.fromARGB(255, 0, 203, 27),
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
              ),
              ElevatedButton(
                style:const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Color(0xff0e5746)),
                ),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (ctx) => const LoginSignupPage()));
                  },
                  child: const Text('Log Out',))
            ],
          ),
        ));
  }
}
