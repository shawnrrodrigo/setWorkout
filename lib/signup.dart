import 'package:flutter/material.dart';
import 'package:setworkout/login.dart';

class SignupScreen extends StatefulWidget {
  static const routeName = '/signupscreen';

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: Center(
                child: Image.asset(
                  'assets/images/Logo.png',
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Theme.of(context).buttonColor,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15, top: 7, bottom: 10),
              child: TextField(
                style: TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.email,
                    color: Theme.of(context).shadowColor,
                  ),
                  labelText: 'E-Mail',
                  labelStyle: TextStyle(color: Theme.of(context).buttonColor),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).buttonColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).buttonColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                onChanged: (val) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 7, right: 15),
              child: TextField(
                style: TextStyle(color: Theme.of(context).buttonColor),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Theme.of(context).shadowColor,
                  ),
                  labelText: 'Password',
                  labelStyle: TextStyle(color: Theme.of(context).buttonColor),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).buttonColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                obscureText: true,
                onChanged: (val) {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, bottom: 7, right: 15),
              child: TextField(
                style: TextStyle(color: Theme.of(context).buttonColor),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.lock_outline,
                    color: Theme.of(context).shadowColor,
                  ),
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(color: Theme.of(context).buttonColor),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: Theme.of(context).buttonColor),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                obscureText: true,
                onChanged: (val) {},
              ),
            ),
            Center(
              child: Container(
                height: 46,
                width: width * 0.9,
                decoration: BoxDecoration(
                  color: Theme.of(context).buttonColor,
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Already have an account?',
                    style: TextStyle(color: Colors.white),
                  ),
                  InkWell(
                    onTap: () =>
                        Navigator.of(context).pushNamed(LoginScreen.routeName),
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
