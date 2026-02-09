import 'package:flutter/material.dart';
import 'package:my_app/pages/signup.dart';
import 'package:my_app/services/widget_support.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset("images/login.png"),
            SizedBox(height: 5.0),
            Center(
              child: Text("LogIn", style: AppWidget.headlinetextstyle(25.0)),
            ),
            SizedBox(height: 5.0),
            Center(
              child: Text(
                "Please enter the details to continue.",
                style: AppWidget.normaltextstyle(17.0),
              ),
            ),
            SizedBox(height: 20.0),

            SizedBox(height: 15.0),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text("Email", style: AppWidget.normaltextstyle(20.0)),
            ),
            SizedBox(height: 10.0),
            Container(
              margin: EdgeInsets.only(left: 30.0, right: 30.0),
              decoration: BoxDecoration(
                color: Color(0xFFececf8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.mail,
                    color: const Color.fromARGB(255, 7, 116, 206),
                  ),
                  hintText: "Enter Email",
                  hintStyle: AppWidget.normaltextstyle(18.0),
                ),
              ),
            ),
            SizedBox(height: 30.0),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text("Password", style: AppWidget.normaltextstyle(20.0)),
            ),
            SizedBox(height: 10.0),
            Container(
              margin: EdgeInsets.only(left: 30.0, right: 30.0),
              decoration: BoxDecoration(
                color: Color(0xFFececf8),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  prefixIcon: Icon(
                    Icons.password,
                    color: const Color.fromARGB(255, 7, 116, 206),
                  ),
                  hintText: "Enter Password",
                  hintStyle: AppWidget.normaltextstyle(18.0),
                ),
              ),
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Forgot Password? ",
                    style: AppWidget.normaltextstyle(18.0),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Center(
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 10, 121, 212),
                  borderRadius: BorderRadius.circular(10),
                ),
                width: MediaQuery.of(context).size.width / 2,
                child: Center(
                  child: Text(
                    "LogIn",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ",
                  style: AppWidget.normaltextstyle(18.0),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => SignUp()),
                    );
                  },
                  child: Text(
                    "SignUp",
                    style: AppWidget.headlinetextstyle(20.0),
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
