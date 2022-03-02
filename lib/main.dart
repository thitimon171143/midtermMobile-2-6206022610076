import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'presonal_page.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget{
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  TextEditingController _name = TextEditingController();
  TextEditingController _sex = TextEditingController();
  TextEditingController _birth = TextEditingController();
  TextEditingController _nationality = TextEditingController();
  TextEditingController _religion = TextEditingController();
  TextEditingController _status = TextEditingController();
  TextEditingController _educational = TextEditingController();
  TextEditingController _gpa = TextEditingController();


  @override
  void initState() {
    _name.text = ""; //innitail value of text field
    _sex.text = "";
    _birth.text = "";
    _nationality.text = "";
    _status.text = "";
    _status.text = "";
    _educational.text = "";
    _gpa.text = "";
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar( 
             title: Text("Register of FITM"),
             backgroundColor: Colors.blue,
          ),
          body: SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: Column(
              children: [
                Image.asset(
                "assets/images/fitm.jpg",
                height: 150,
                ),

                TextField( 
                  controller: _name,
                  decoration: InputDecoration( 
                      labelText: "Name - Surname",
                      prefixIcon: Icon(Icons.person),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:10),

                 TextField( 
                  controller: _birth,
                  decoration: InputDecoration( 
                      labelText: "Date of birth",
                      prefixIcon: Icon(Icons.lock),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:10),

                 TextField( 
                  controller: _nationality,
                  decoration: InputDecoration( 
                      labelText: "Nationality",
                      prefixIcon: Icon(Icons.lock),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:10),

                 TextField( 
                  controller: _religion,
                  decoration: InputDecoration( 
                      labelText: "Religion",
                      prefixIcon: Icon(Icons.lock),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                 Container(height:10),

                 TextField( 
                  controller: _gpa,
                  decoration: InputDecoration( 
                      labelText: "GPA",
                      prefixIcon: Icon(Icons.lock),
                      border: myinputborder(),
                      enabledBorder: myinputborder(),
                      focusedBorder: myfocusborder(),
                  )
                ),

                Container(height:10),

                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  ),
                  hint: Text('Sex'),
                  items: <String>['Female', 'Male'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                );}).toList(),
                  onChanged: (_) {},
                ),

                Container(height:10),
                
                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  ),
                  hint: Text('Status'),
                  items: <String>['Single', 'Married', 'Divorced'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                );}).toList(),
                  onChanged: (_) {},
                ),

                Container(height:10),

                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  ),
                  hint: Text('Educational'),
                  items: <String>['Senior High School', 'Vocational Certificate', 'Vocational Diploma'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                );}).toList(),
                  onChanged: (_) {},
                ),

                Container(height:10),

                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  ),
                  hint: Text('โครงการรับสมัคร'),
                  items: <String>['รับตรงสอบข้อเขียน', 'โควตาพื้นที่', 'Portfolio', 'เรียนดี', 'รับตรงใช้คะแนน GAT/PAT'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                );}).toList(),
                  onChanged: (_) {},
                ),

                Container(height:10),

                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  ),
                  hint: Text('อันดับ 1'),
                  items: <String>['Senior High School', 'Vocational Certificate', 'Vocational Diploma'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                );}).toList(),
                  onChanged: (_) {},
                ),

                Container(height:10),

                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  ),
                  hint: Text('อันดับ 2'),
                  items: <String>['Senior High School', 'Vocational Certificate', 'Vocational Diploma'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                );}).toList(),
                  onChanged: (_) {},
                ),

                Container(height:10),

                DropdownButtonFormField<String>(
                  decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  ),
                  hint: Text('อันดับ 3'),
                  items: <String>['Senior High School', 'Vocational Certificate', 'Vocational Diploma'].map((String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                );}).toList(),
                  onChanged: (_) {},
                ),

                Container(height:10),

                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => personal(
                          username: _name.text, 
                          email: _sex.text, 
                          password: _birth.text, 
                          cnfpassword: _nationality.text))
                    );
                  }, 
                    child: Text('Register'))
              ],
            ),
          )
       );
  }

  OutlineInputBorder myinputborder(){ //return type is OutlineInputBorder
    return OutlineInputBorder( //Outline border type for TextFeild
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
          color:Colors.greenAccent,
          width: 3,
        )
    );
  }

  OutlineInputBorder myfocusborder(){
    return OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
      borderSide: BorderSide(
          color:Colors.redAccent,
          width: 3,
        )
    );
  }
  //create a function like this so that you can use it wherever you want
}