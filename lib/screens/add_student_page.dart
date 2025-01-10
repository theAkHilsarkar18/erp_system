import 'package:erp_system/utils.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class AddStudentPage extends StatefulWidget {
  const AddStudentPage({super.key});

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: bgColor,
            )),
        title: Text(
          'Add Student',
          style: TextStyle(
              color: bgColor, fontWeight: FontWeight.w600, letterSpacing: 1),
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
                  Navigator.pop(context);
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
                  child: Text('Add Student',style: TextStyle(color: bgColor,fontWeight: FontWeight.w500,letterSpacing: 1,fontSize: 20,),),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


Widget inputBox({required String label,required TextEditingController txtController})
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: TextField(
      controller: txtController,
      cursorColor: primary,
      style: TextStyle(
        color: black,
        fontWeight: FontWeight.w500,
        letterSpacing: 1,
        fontSize: 18,
      ),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: TextStyle(
          color: primary,
          fontWeight: FontWeight.w500,
          letterSpacing: 1,
          fontSize: 18,
        ),
        enabledBorder:
        OutlineInputBorder(borderSide: BorderSide(color: primary)),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: primary, width: 1.5)),
      ),
    ),
  );
}
