import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:joblistingapp/Screens/adPosting.dart';

class Edit extends StatefulWidget {
  const Edit({super.key});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
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
              Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(
                    top: 70,
                  )),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(
                        left: 15,
                      )),
                      Column(
                        children: [
                          Row(
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => AdPosting(),
                                      ),
                                    );
                                  },
                                  child: Icon(
                                    Icons.arrow_back_ios_sharp,
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    size: 30,
                                  ),
                                ),
                              // Spacer(),
                              Padding(padding: EdgeInsets.only(top: 80)),
                              SizedBox(
                                width: 30,
                              ),
                              Text(
                                'Edit Job',
                                style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontFamily: 'Poppins-Bold',
                                  fontSize: 25,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),

              // column2

              // SizedBox(height: 10),
              Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
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
                            hintText: '',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(143, 143, 158, 1),
                              fontFamily: 'Poppins-Regular',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
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

              // column3

              SizedBox(height: 20),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 27)),

                      // container 2

                      Container(
                        height: 300,
                        width: 310,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color.fromRGBO(93, 93, 103, 1),
                          ),
                        ),
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: '',
                            hintStyle: TextStyle(
                              color: Color.fromRGBO(143, 143, 158, 1),
                              fontFamily: 'Poppins-Regular',
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                            ),
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

              // column 4

              SizedBox(
                height: 120,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 27, bottom: 100)),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromRGBO(255, 255, 255, 1),
                          foregroundColor: Color.fromRGBO(25, 23, 32, 1),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 90.0, vertical: 20.0),
                          child: Text(
                            'Update Job',
                            style: TextStyle(
                                fontSize: 15.0,
                                fontFamily: 'Poppins-Regular',
                                fontWeight: FontWeight.w800),
                          ),
                        ),
                      ),
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
