import 'package:flutter/material.dart';

import '../colors.dart';
import '../utils.dart';
import 'add_student_page.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  State<EditPage> createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: bgColor,
          ),
        ),
        title: Text(
          'Edit Page',
          style: TextStyle(
            color: bgColor,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: primary,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    color: bgColor,
                    border: Border.all(color: primary,width: 2),
                    shape: BoxShape.circle
                ),
              ),
              SizedBox(height: 20,),
              inputBox(label: 'ID',txtController: txtId),
              inputBox(label: 'Name',txtController: txtName),
              inputBox(label: 'Age',txtController: txtAge),
              inputBox(label: 'Course',txtController: txtCourse),
              inputBox(label: 'Phone',txtController: txtPhone),
              inputBox(label: 'Address',txtController: txtAddress),
              const SizedBox(height: 60,),

              GestureDetector(
                onTap: () {
                  Map student = {
                    'id': txtId.text,
                    'name': txtName.text,
                    'age': txtAge.text,
                    'phone': txtPhone.text,
                    'course': txtCourse.text,
                    'address': txtAddress.text,
                  };
                  studentsList[listIndex] = student;
                  Navigator.of(context).pushReplacementNamed('/');
                  // txtName.clear();
                  // txtAge.clear();
                  // txtAddress.clear();
                  // txtId.clear();
                  // txtCourse.clear();
                  // txtPhone.clear();
                },
                child: Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.all(8),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: primary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text('Update Student',style: TextStyle(color: bgColor,fontWeight: FontWeight.w500,letterSpacing: 1,fontSize: 20,),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
