import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 75.0),
                //APP LOGO
                Image.asset(
                  'assets/images/B&W_logo.png',
                  width: 150.0,
                  height: 150.0,
                ),
                SizedBox(height: 30.0),
                // USERNAME FIELD
                // TextField(
                //   decoration: InputDecoration(
                //     hintText: 'Username',
                //     prefixIcon: Icon(Icons.person),
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(30.0),
                //     ),
                //   ),
                // ),
                // SizedBox(height: 20.0),
                // // PASSWORD FIELD
                // TextField(
                //   obscureText: true,
                //   decoration: InputDecoration(
                //     hintText: 'Password',
                //     prefixIcon: Icon(Icons.lock),
                //     border: OutlineInputBorder(
                //       borderRadius: BorderRadius.circular(30.0),
                //     ),
                //   ),
                // ),
                // SizedBox(height: 20.0),
                // // LOGIN BUTTON
                // ElevatedButton(
                //   onPressed: () {},
                //   child: Text(
                //     'Login',
                //     style: TextStyle(fontSize: 16.0),
                //   ),
                //   style: ElevatedButton.styleFrom(
                //     padding: EdgeInsets.symmetric(horizontal: 30.0),
                //   ),
                // ),
                // SizedBox(height: 20.0),
                // LOGIN WITH GOOGGLE BUTTON
                ElevatedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/images/Google_logo.png',
                        height: 24.0,
                        width: 24.0,
                      ),
                      const SizedBox(
                          width: 15.0), // Add spacing between image and text
                      const Text(
                        'Login with Google',
                        style: TextStyle(fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20.0),
                // FORGOT PASSWORD
                // TextButton(
                //   onPressed: () {},
                //   child: Text('Forgot Password?'),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
