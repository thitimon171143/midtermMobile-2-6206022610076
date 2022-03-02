import 'package:flutter/material.dart';

class personal extends StatelessWidget {
  String name, sex, birth, nationality, religion, status, educational, gpa, project, num1, num2, num3;

  personal(
    {Key? key,
    required this.name,
    required this.sex,
    required this.birth,
    required this.nationality,
    required this.religion,
    required this.status,
    required this.educational,
    required this.gpa,
    required this.project,
    required this.num1,
    required this.num2,
    required this.num3,})
    :super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Personal'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Name - Surname : '),
                    subtitle: Text(' $name'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Date of Birth : '),
                    subtitle: Text(' $birth'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Nationality : '),
                    subtitle: Text(' $nationality'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Religion : '),
                    subtitle: Text(' $religion'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('GPA : '),
                    subtitle: Text(' $gpa'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Sex : '),
                    subtitle: Text(' $sex'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Status : '),
                    subtitle: Text(' $status'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Educational : '),
                    subtitle: Text(' $educational'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('โครงการรับสมัคร : '),
                    subtitle: Text(' $project'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('อันดับ 1 : '),
                    subtitle: Text(' $num1'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('อันดับ 2 : '),
                    subtitle: Text(' $num2'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('อันดับ 3 : '),
                    subtitle: Text(' $num3'),
                  )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}