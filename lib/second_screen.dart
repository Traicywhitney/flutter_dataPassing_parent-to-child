import 'package:flutter/material.dart';
import 'package:flutter_data_passing_parent_child/first_screen.dart';

class SecondScreen extends StatefulWidget {
  final String userName;
  final String mobileNumber;

  const SecondScreen(
      {super.key, required this.userName, required this.mobileNumber});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  void initState() {
    print('userName${widget.userName}');
    print('mobileNumber${widget.mobileNumber}');

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.userName,
                style: TextStyle(fontSize: 20),
              ),
              Text(widget.mobileNumber,style: TextStyle(fontSize: 20),)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('--------->FAB Clicked');
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => FirstScreen()));
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
