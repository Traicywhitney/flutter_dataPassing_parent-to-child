import 'package:flutter/material.dart';
import 'package:flutter_data_passing_parent_child/second_screen.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({super.key});

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  var _nameController = TextEditingController();
  var _mobileNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Passing form first screen'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _nameController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: 'Enter Name',
                      labelText: 'Enter Name',
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextFormField(
                    controller: _mobileNoController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                      hintText: 'Enter Mobile Number',
                      labelText: 'Enter Mobile Number',
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                    onPressed: () {
                      print('----->Send Data');
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SecondScreen(
                                userName: _nameController.text,
                                mobileNumber: _mobileNoController.text,
                              )));
                    },
                    child: Text('send Data'))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
