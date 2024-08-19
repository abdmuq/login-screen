import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Color(0xff6DBBF3FF),
          ),
          //-----Back-Button on top-----
          Positioned(
            left: 20,
            top: 60,
            child: Container(
              width: 40,
              height: 45,
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent,
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: TextButton(
                onPressed: () {
                  // back Arrow logic here
                },
                child: Icon(Icons.arrow_back_ios_new, color: Colors.white, size: 16),
              ),
            ),
          ),
          //----Circles on right-----
          Positioned(
            right: -45,
            top: -33,
            child: Container(
              width: 220,
              height: 220,
              decoration: BoxDecoration(
                color: Color(0xff4F95B4FF),
                shape: BoxShape.circle,
              ),
            ),
          ),
          //----Circles on right-----
          Positioned(
            right: -20,
            top: -15,
            child: Container(
              width: 170,
              height: 170,
              decoration: BoxDecoration(
                color: Color(0xff80B4D0FF),
                shape: BoxShape.circle,
              ),
            ),
          ),
          //----Rectangle on bottom-----
          Positioned(
            bottom: 0,
            child: Container(
              width: 412,
              height: 690,
              decoration: BoxDecoration(
                color: Color(0xffFFFEFD),
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(25),
                  topLeft: Radius.circular(25),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 5),
                    //-----Title----
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                        children: [
                          Text(
                            'Welcome to ',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Text(
                            'Doom.',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlue,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),
                    //-----Heading-----
                    Text(
                      'Enter your registered email address or phone number to log in',
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black54,
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 20),
                    //-----Email-----
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Email or phone number'),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter your email or phone number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    //-----Password-----
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Password'),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        hintText: 'Enter your password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                        suffixIcon: Icon(Icons.visibility_off),
                      ),
                    ),
                    SizedBox(height: 3),
                    //-----forget button-----
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {
                          // forgot action
                        },
                        child: Text(
                          'Forgot Password ?',
                          style: TextStyle(color: Colors.black54),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    //-----Login button-----
                    Container(
                      width: 350,
                      height: 60,
                      child: ElevatedButton(
                        onPressed: () {
                          // Login
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff4F95B4FF),
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                        ),
                        child: Text(
                          'Log In',
                          style: TextStyle(fontSize: 15),
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Row(
                      children: [
                        Expanded(
                          child: Divider(
                            thickness: 1.1,
                            color: Colors.black,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 25.0),
                          child: Text(
                            'or',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        Expanded(
                          child: Divider(
                            thickness: 1.1,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 5),
                    //-----login from facebook-----
                    Container(
                      width: 350,
                      height: 60,
                      child: TextButton(
                        onPressed: () {
                          // Facebook login here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 55,
                                height: 55,
                                child: Image.asset('assets/images/facebook.png'),
                              ),
                            ),
                            Container(width: 60),
                            Text(
                              'Log In with Facebook',
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //-----login from instagram-----
                    Container(
                      width: 350,
                      height: 60,
                      child: TextButton(
                        onPressed: () {
                          // Instagram login here
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          padding: EdgeInsets.symmetric(vertical: 14),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: 55,
                                height: 55,
                                child: Image.asset('assets/images/instagram.png'),
                              ),
                            ),
                            Container(width: 60),
                            Text(
                              'Log In with Instagram',
                              style: TextStyle(fontSize: 15, color: Colors.black),
                            ),
                          ],
                        ),
                      ),
                    ),
                    //-----Sign up-----
                    Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 80),
                      child: Row(
                        children: [
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(color: Colors.black54),
                          ),
                          TextButton(
                            onPressed: () {
                              // Signup logic here
                            },
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.lightBlue,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}