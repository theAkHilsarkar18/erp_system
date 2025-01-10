import 'package:erp_system/screens/add_student_page.dart';
import 'package:erp_system/screens/detail_page.dart';
import 'package:erp_system/screens/home_page.dart';
import 'package:flutter/material.dart';

// TODO of Today : add student detail and show in home page,open detail page on click,code structured

// TODO: 3. ERP System - Student Management System
// -> TODO: CRUD Operation - Create,Read,Update,Delete
// -> TODO: Add Student - id,name,course,age,photo,address,phone,...
//      -> FAB>New Add Page>Form>Home:Added

// -> TODO: Show all students detail in Home Page
// -> TODO: Also create detail page for each students.
// -> TODO: Update all details of students
// -> TODO: delete all details of students
// -> TODO: search by ID.

void main()
{
  runApp(const ERPSystem());
}

class ERPSystem extends StatelessWidget {

  const ERPSystem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (context)=> const HomePage(),
        '/add' : (context)=> const AddStudentPage(),
        '/detail' : (context)=> const DetailPage(),
      },
    );
  }
}
