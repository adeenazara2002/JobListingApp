import 'package:flutter/material.dart';

class AdPosting extends StatefulWidget {
  const AdPosting({super.key});

  @override
  State<AdPosting> createState() => _AdPostingState();
}

class _AdPostingState extends State<AdPosting> {
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

                            // column 8
              SizedBox(
                height: 500,
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 27)),
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
                              horizontal: 150.0, vertical: 27.0),
                          child: Text(
                            'Sign Up',
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
