import 'package:flutter/material.dart';
import 'package:flutter_application_yt/login_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  Widget button({
    required String name,
    Color? color,
    Color? textColor,
    VoidCallback? onPressed,
  }) {
    return Container(
      height: 45,
      width: double.infinity,
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(15),
          backgroundColor: color ?? Colors.red,
        ),
        child: Text(
          name,
          style: TextStyle(
            color: textColor ?? Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 200,
                    width: 200,
                    child: Image.asset('images/logo.jpg'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Welcome To Tastee",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: [
                      Text("Order Food From Our Restaurant and"),
                      Text("Make Reservation in real-time"),
                    ],
                  ),
                  SizedBox(height: 20),
                  button(
                    name: 'Login',
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {
                      // Add login button action here
                    },
                  ),
                  SizedBox(height: 10),
                  button(
                    name: 'SignUp',
                    color: Colors.red,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pushReplacement(MaterialPageRoute(
                          builder: (BuildContext context) => SignUpPage()));
                      // Add sign-up button action here
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
