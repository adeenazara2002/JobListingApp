import 'package:flutter/material.dart';
import 'package:joblistingapp/Screens/regScreen.dart';
import 'package:joblistingapp/Screens/loginScreen.dart';
import 'package:joblistingapp/Screens/job.dart';



void main(){
  runApp(const JobListing());
}

class JobListing extends StatelessWidget {
  const JobListing({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Job(),
    );
  }
}