import 'package:erp_system/screens/add_student_page.dart';
import 'package:erp_system/screens/detail_page.dart';
import 'package:erp_system/screens/edit_page.dart';
import 'package:erp_system/screens/home_page.dart';
import 'package:flutter/material.dart';

// TODO of Today : add student detail and show in home page,open detail page on click,code structured

// TODO: 3. ERP System - Student Management System
// -> CRUD Operation - Create,Read,Update,Delete
// ->  Add Student - id,name,course,age,photo,address,phone,...
//      -> FAB>New Add Page>Form>Home:Added

// ->  Show all students detail in Home Page
// -> Also create detail page for each students.
// -> Update all details of students
// -: delete all details of students
// -> TODO: search by ID.
// -> Image: onclick -> gallery
// -> TODO: PDF.

// Bug(Problem in our app) Bounties ->

// Package --> collection of code of specific feature,
// Flutter SDK : UI Framework : Dart : pub.dev
// pubspec.yaml : data entry : package,image,mp3,video,

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
        '/edit' : (context)=> const EditPage(),
      },
    );
  }
}

// 100

