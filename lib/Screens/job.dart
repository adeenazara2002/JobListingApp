import 'package:flutter/material.dart';
import 'package:joblistingapp/Screens/adPosting.dart';
import 'package:joblistingapp/Screens/adPosting2.dart';
import 'package:joblistingapp/models/jobList.dart';

class Job extends StatefulWidget {
  const Job({super.key});

  @override
  State<Job> createState() => _JobState();
}

class _JobState extends State<Job> {
  List<JobList> jobList = List.empty(growable: true);

  void addJob(JobList job) {
    setState(() {
      jobList.add(job);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Color.fromRGBO(25, 23, 32, 1),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 25, top: 80),
              child: Row(
                children: [
                  Text(
                    'Welcome',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Poppins-Regular',
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 27,
              ),
              child: Row(
                children: [
                  Text(
                    'Usama Khan',
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Poppins-Regular',
                      fontSize: 25,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 130)),
                  Icon(
                    Icons.arrow_circle_left_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10, top: 20),
              child: Container(
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
                    prefixIcon: Icon(
                      Icons.search,
                      color: Color.fromRGBO(93, 93, 103, 1),
                      size: 30,
                    ),
                    hintText: 'Search keywords..',
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
              ),
            ),
            Padding(padding: EdgeInsets.only(top: 10)),
            jobList.isEmpty
                ? const Text(
                    'No jobs yet...',
                    style: TextStyle(
                        fontSize: 22, color: Color.fromRGBO(143, 143, 158, 1)),
                  )
                : Expanded(
                    child: ListView.builder(
                      itemCount: jobList.length,
                      itemBuilder: (context, index) => getRow(index),
                    ),
                  ),
          ],
        ),
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        decoration: BoxDecoration(
          color: Color.fromRGBO(229, 229, 229, 1),
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            color: Color.fromRGBO(229, 229, 229, 1),
          ),
        ),
        child: FloatingActionButton(
          onPressed: () async {
            final newJob = await Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdPosting()),
            );
            if (newJob != null) {
              addJob(newJob);
            }
          },
          backgroundColor: Color.fromRGBO(229, 229, 229, 1),
          shape: CircleBorder(),
          child: Icon(
            Icons.add_sharp,
            size: 30,
            color: Color.fromRGBO(25, 23, 32, 1),
          ),
        ),
      ),
    );
  }

Widget getRow(int index) {
  return Padding(
    padding: const EdgeInsets.only(left: 27, right: 20, top: 10),
    child: Container(
      height: 100,
      width: 310,
      decoration: BoxDecoration(
        color: Color.fromRGBO(32, 30, 39, 1),
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
          color: Color.fromRGBO(32, 30, 39, 1),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(jobList[index].position),
                          content: Text(jobList[index].desc),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('Close'),
                            ),
                          ],
                        );
                      },
                    );
                  },
                  child: Text(
                    jobList[index].position,
                    style: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 1),
                      fontFamily: 'Poppins-Bold',
                      fontSize: 15,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      onTap: () async {
                        JobList selectedJob = jobList[index];
                        final updatedJob = await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Edit(
                              job: selectedJob,
                              onUpdate: (JobList updatedJob) {
                                setState(() {
                                  jobList[index] = updatedJob;
                                });
                              },
                            ),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.edit_note_outlined,
                        color: Colors.white,
                        size: 30,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        setState(() {
                          jobList.removeAt(index);
                        });
                      },
                      child: const Icon(
                        Icons.delete_outline_outlined,
                        color: Color.fromRGBO(255, 89, 89, 1),
                        size: 30,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Text(
              jobList[index].location,  // Display the fixed location
              style: TextStyle(
                color: Color.fromRGBO(143, 143, 158, 1),
                fontFamily: 'Poppins-Regular',
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
}
