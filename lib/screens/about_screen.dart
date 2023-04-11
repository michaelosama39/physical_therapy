import 'package:flutter/material.dart';

import '../dummy_data.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 35, 15, 5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  'About Us',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'We are group 31, a group of fifth grade Physical Therapy students at Kafr El Sheikh University.',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'This app was created as a graduation project in the fifth year of Physical Therapy Program under supervision of Prof.Dr. Mahmoud Ewidea and Prof.Dr. Fayez El Shamy and with the cooperation of 20physical therapy students (G 31)',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Project Implementers',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: List.generate(
                  DUMMY_PROJECTIMPLEMENZTERS.length,
                  (index) => Text(
                    DUMMY_PROJECTIMPLEMENZTERS[index],
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Project Supervisors',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Prof.Dr. Mahmoud Ewidea',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              Text(
                'Prof.Dr. Fayez El Shamy',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'App Release Date',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '2022-12-20',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
