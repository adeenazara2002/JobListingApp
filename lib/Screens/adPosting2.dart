import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:joblistingapp/Screens/adPosting.dart';
import 'package:joblistingapp/models/jobList.dart';

class Edit extends StatefulWidget {
  final JobList job;
  final Function(JobList) onUpdate;
  const Edit({super.key, required this.job, required this.onUpdate});

  @override
  State<Edit> createState() => _EditState();
}

class _EditState extends State<Edit> {
  late TextEditingController positionController;
  late TextEditingController descController;

  @override
  void initState() {
    super.initState();
    positionController = TextEditingController(text: widget.job.position);
    descController = TextEditingController(text: widget.job.desc);
  }

  @override
  void dispose() {
    positionController.dispose();
    descController.dispose();
    super.dispose();
  }

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
                          controller: positionController,
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
                          controller: descController,
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
                        onPressed: () {
                          String position = positionController.text.trim();
                          String desc = descController.text.trim();
                          if (position.isNotEmpty && desc.isNotEmpty) {
                            JobList updatedJob =
                                JobList(position: position, desc: desc);
                            widget.onUpdate(updatedJob);
                            Navigator.pop(context);
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
