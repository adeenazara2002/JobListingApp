import 'package:flutter/material.dart';

class Job extends StatefulWidget {
  const Job({super.key});

  @override
  State<Job> createState() => _JobState();
}

class _JobState extends State<Job> {
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
                      Padding(padding: EdgeInsets.only(top: 90)),
                      SizedBox(
                        width: 80,
                      ),
                      Text(
                        'Welcome',
                        style: TextStyle(
                            color: Color.fromRGBO(255, 255, 255, 1),
                            fontFamily: 'Poppins-Regular',
                            fontSize: 18,
                            fontWeight: FontWeight.w700),
                      ),
                    ],
                  ),
                ],
              ),

              // column2

              Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 27)),
                      Text(
                        'Usama Khan',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontFamily: 'Poppins-Regular',
                          fontSize: 25,
                          fontWeight: FontWeight.w300,
                        ),
                      ),

                      // icon

                      Container(
                        padding: EdgeInsets.only(left: 220, bottom: 20),
                        child: Icon(
                          Icons.arrow_circle_left_outlined,
                          color: Colors.white,
                          size: 40,
                        ),
                      ),
                    ],
                  ),
                ],
              ),

              // column3
            
            SizedBox(height: 10,),
              Column(
                children: [
                  Row(
                    children: [
                     
                      Padding(padding: EdgeInsets.only(left: 27)),

                      // container 3

                      Container(
                        height: 70,
                        width: 400,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color.fromRGBO(93, 93, 103, 1),
                          ),
                        ),
                        child: TextField(
                          
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.search , 
                            color: Color.fromRGBO(93, 93, 103, 1),
                            size: 30,),
                            hintText: 'Search keywords..',
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