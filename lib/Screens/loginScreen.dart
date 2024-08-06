import 'package:flutter/material.dart';
import 'package:joblistingapp/Screens/job.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Color.fromRGBO(25, 23, 32, 1),
          child: Scrollbar(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(padding: EdgeInsets.only(left: 25)),
                      Column(
                        children: [
                          // Spacer(),
                          Padding(padding: EdgeInsets.only(top: 80)),
                          SizedBox(
                            width: 120,
                          ),
                          Text(
                            'Let\'s sign you in',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins',
                              fontSize: 35,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // column2
                  // Spacer(),
                  
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 27)),
                          Text(
                            'Welcome back',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins-Regular',
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // column3
                  // SizedBox(height: 10,),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 27)),
                          Text(
                            'you\'ve been missed!',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins-Regular',
                              fontSize: 30,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // column4 => Text fields
                  SizedBox(
                    height: 50,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 27)),
                          // container 1
                          Container(
                            height: 68,
                            width: 310,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Color.fromRGBO(93, 93, 103, 1),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter your email address',
                                hintStyle: TextStyle(
                                  color: Color.fromRGBO(143, 143, 158, 1),
                                  fontFamily: 'Poppins-Regular',
                                  fontSize: 15,
                                  fontWeight: FontWeight.w400,
                                ),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 18.0,
                                  horizontal: 20.0,
                                ),
                              ),
                              style: TextStyle(
                                color: Color.fromRGBO(143, 143, 158, 1),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  // column5 => Text fields
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 27)),
                          // container 2
                          Container(
                            height: 68,
                            width: 310,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                color: Color.fromRGBO(93, 93, 103, 1),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                hintText: 'Enter your password',
                                hintStyle: TextStyle(
                                    color: Color.fromRGBO(143, 143, 158, 1),
                                    fontFamily: 'Poppins-Regular',
                                    fontSize: 15,
                                    fontWeight: FontWeight.w400),
                                border: InputBorder.none,
                                contentPadding: EdgeInsets.symmetric(
                                  vertical: 18.0,
                                  horizontal: 20.0,
                                ),
                              ),
                              style: TextStyle(
                                color: Color.fromRGBO(143, 143, 158, 1),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                  // column 7
                  SizedBox(
                    height: 220,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 70)),
                          Text(
                            'Don\'t have an account?',
                            style: TextStyle(
                              color: Color.fromRGBO(143, 143, 158, 1),
                              fontFamily: 'Poppins-Regular',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          // another text
                          Padding(padding: EdgeInsets.only(left: 10)),
                          Text(
                            'Register',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins-Regular',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  // column 8
                  SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Padding(padding: EdgeInsets.only(left: 27)),
                          ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Job(),
                                ),
                              );
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                              foregroundColor: Color.fromRGBO(25, 23, 32, 1),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 105.0,
                                vertical: 20.0,
                              ),
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  fontSize: 15.0,
                                  fontFamily: 'Poppins-Regular',
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          )),
    );
  }
}
