import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup_ui/screens/home_page.dart';
import 'package:login_signup_ui/screens/signup_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  final _nameController = TextEditingController();
  final _passwordController = TextEditingController();

  void vaildatingNameAndPassword(name, password, context) {
    String userName = 'admin@gmail.com';
    String password = '123456';
    if (_nameController.text.isNotEmpty &&
        _passwordController.text.isNotEmpty) {
      if (userName == _nameController.text && password == _passwordController.text) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (ctx) => const HomePage()));
      } else {
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text('Username or password incorrect'),
            backgroundColor: Colors.red));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text('Fields must not be empty'),
          backgroundColor: Colors.red));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    left: 18, right: 18, top: 6, bottom: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Login",
                        style: GoogleFonts.roboto(
                          fontSize: 48,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Text(
                        'Welcome back! Login with your credentials',
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 18, vertical: 14),
                child: Column(
                  children: [
                    TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                          hintText: 'Email ID',
                          labelText: 'Email ID',
                          isDense: true,
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                          hintText: 'Password',
                          labelText: 'Password',
                          isDense: true,
                          suffixIcon: Icon(Icons.visibility_off),
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      style: const ButtonStyle(
                        minimumSize:
                            MaterialStatePropertyAll(Size(double.infinity, 40)),
                        backgroundColor:
                            MaterialStatePropertyAll(Color(0xff0e5746)),
                      ),
                      onPressed: () {
                        vaildatingNameAndPassword(
                            _nameController, _passwordController, context);
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Are you new here?'),
                  TextButton(
                    style: TextButton.styleFrom(
                        padding: EdgeInsets.zero, minimumSize: Size.zero),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (ctx) => const SignUpPage()));
                    },
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(color: Color(0xff0e5746)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
