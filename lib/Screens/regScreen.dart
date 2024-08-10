import 'package:flutter/material.dart';
import 'package:joblistingapp/Screens/job.dart';
import 'package:joblistingapp/Screens/loginScreen.dart';
import 'package:joblistingapp/models/regUser.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();



  List<User> user = List.empty(growable: true);

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
        color: Color.fromRGBO(25, 23, 32, 1),
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 25)),
                    Column(
                      children: [
                        Padding(padding: EdgeInsets.only(top: 80)),
                        SizedBox(
                          width: 120,
                        ),
                        Text(
                          'Let\'s sign you up',
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
                // SizedBox(
                //   height: 10,
                // ),
                Column(
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
                SizedBox(
                  height: 50,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 27)),
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
                            controller: fullNameController,
                            decoration: InputDecoration(
                              hintText: 'Enter your full name',
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
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 27)),
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
                            controller: emailController,
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
                SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 27)),
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
                            controller: passwordController,
                              obscureText: true,
                            decoration: InputDecoration(
                              hintText: 'Enter your password',
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
               SizedBox(
                  height: 130,
                ),
                
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(padding: EdgeInsets.only(left: 70)),
                        Text(
                          'Already have an account?',
                          style: TextStyle(
                            color: Color.fromRGBO(143, 143, 158, 1),
                            fontFamily: 'Poppins-Regular',
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        Padding(padding: EdgeInsets.only(left: 10)),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Login(registeredUsers: user),
                              ),
                            );
                          },
                          child: Text(
                            'Sign In',
                            style: TextStyle(
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontFamily: 'Poppins-Regular',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 27, bottom: 100)),
                        ElevatedButton(
                          onPressed: () {
                            String fullName = fullNameController.text.trim();
                            String email = emailController.text.trim();
                            String password = passwordController.text.trim();
                            if (fullName.isNotEmpty &&
                                email.isNotEmpty &&
                                password.isNotEmpty) {
                              setState(() {
                                fullNameController.text = '';
                                emailController.text = '';
                                passwordController.text = '';
                              });
                              user.add((User(
                                  fullName: fullName,
                                  email: email,
                                  password: password)));
                              print('User add successsfully');
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Job(),
                                ),
                              );
                            } 
                            
                            
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
                              'Sign Up',
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
        ),
      ),
    );
  }
}
