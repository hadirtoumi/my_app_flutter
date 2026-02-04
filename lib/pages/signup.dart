import 'package:flutter/material.dart';
import 'package:my_app/pages/login.dart';
import 'package:my_app/services/widget_support.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.only(top: 40.0),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "images/signup.png",
                height: 300,
                width: 300,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 5.0),
            Center(
              child: Text("Sign Up", style: AppWidget.headlinetextstyle(25.0)),
            ),
            SizedBox(height: 5.0),
            Center(
              child: Text(
                "Please enter the details to continue.",
                style: AppWidget.normaltextstyle(17.0),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Text("Name", style: AppWidget.normaltextstyle(20.0)),
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
                    Icons.person,
                    color: const Color.fromARGB(255, 7, 116, 206),
                  ),
                  hintText: "Enter Name",
                  hintStyle: AppWidget.normaltextstyle(18.0),
                ),
              ),
            ),
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
             SizedBox(height: 15.0),
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
            SizedBox(height: 30.0,),
            Center(
              child: Container(
                height: 60,
                decoration: BoxDecoration(color: const Color.fromARGB(255, 110, 190, 113), borderRadius: BorderRadius.circular(10)),
                width: MediaQuery.of(context).size.width/2,
                child: Center(child: Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 24.0, fontWeight: FontWeight.bold),)),
              ),
            ),
            SizedBox(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Text("Already have an account? ", style: AppWidget.normaltextstyle(18.0),),
              GestureDetector(
                onTap: (){
                   Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => LogIn()),
                    );
                },
                child: Text("LogIn", style: AppWidget.headlinetextstyle(20.0),))
            ],)
          ],
        ),
      ),
    );
  }
}
