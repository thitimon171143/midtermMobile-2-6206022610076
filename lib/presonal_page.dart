import 'package:flutter/material.dart';

class personal extends StatelessWidget {
  String username, email, password, cnfpassword;

  personal(
    {Key? key,
    required this.username,
    required this.email,
    required this.password,
    required this.cnfpassword,})
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
                    title: Text('Userame : '),
                    subtitle: Text(' $username'),
                  )),
                Card(
                  elevation: 5,
                  margin: const EdgeInsets.all(10),
                  child: ListTile(
                    title: Text('Email : '),
                    subtitle: Text(' $email'),
                  )),
                /*ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => information())
                    );
                  }, 
                    child: Text('Next Page'))*/
              ],
            ),
          ),
        ),
      ),
    );
  }
}