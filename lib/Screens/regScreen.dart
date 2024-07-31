import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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
                      Padding(padding: EdgeInsets.only(top: 110)),
                      SizedBox(
                        width: 120,
                      ),
                      Text(
                        'Let\'s sign you up',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Poppins',
                            fontSize: 35,
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ],
              ),

              // column2

              // Spacer(),
              SizedBox(
                height: 10,
              ),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 27)),
                      Text(
                        'Welcome',
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
                        'Join the community!',
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
                height: 70,
              ),

              Column(
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 27)),

                      // container 1

                      Container(
                        height: 71,
                        width: 360,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color.fromRGBO(93, 93, 103, 1),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Enter your full name',
                            hintStyle: TextStyle(
                                color: Color.fromRGBO(143, 143, 158, 1),
                                fontFamily: 'Poppins-Regular',
                                fontSize: 15,
                                fontWeight: FontWeight.w400),
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.symmetric(
                              vertical: 20.0,
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
            ],
          ),
        )),
      ),
    );
  }
}
