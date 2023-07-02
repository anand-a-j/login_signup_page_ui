import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup_ui/screens/login_page.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 18, right: 18, top: 6, bottom: 16
              ),
              child: SizedBox(
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign Up",
                      style: GoogleFonts.roboto(
                        fontSize: 48,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Text(
                      'Create an account, Its free',
                    )
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                        hintText: 'Email ID',
                        labelText: 'Email ID',
                        isDense: true,
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'New Password',
                        labelText: 'New Password',
                        isDense: true,
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder()),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Confirm New Password',
                        labelText: 'Confirm New Password',
                        isDense: true,
                        suffixIcon: Icon(Icons.visibility_off),
                        border: OutlineInputBorder()
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  ElevatedButton(
                    style: const ButtonStyle(
                      minimumSize:
                          MaterialStatePropertyAll(Size(double.infinity, 40)
                          ),
                      backgroundColor:
                          MaterialStatePropertyAll(Color(0xff0e5746)),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "SignUp",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('Do you have an account?'),
                TextButton(
                  style: TextButton.styleFrom(
                      padding: EdgeInsets.zero, minimumSize: Size.zero),
                  onPressed: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (ctx) => const LoginPage()));
                  },
                  child: const Text(
                    'Log in',
                    style: TextStyle(color: Color(0xff0e5746)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
