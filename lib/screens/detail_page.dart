import 'package:erp_system/utils.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
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
            Icons.arrow_back_outlined,
            color: bgColor,
          ),
        ),
        title: Text(
          'Detail Page',
          style: TextStyle(
            color: bgColor,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        actions: [
          IconButton(onPressed: () {
            txtId = TextEditingController(text: studentsList[listIndex]['id']);
            txtName = TextEditingController(text: studentsList[listIndex]['name']);
            txtAge = TextEditingController(text: studentsList[listIndex]['age']);
            txtPhone = TextEditingController(text: studentsList[listIndex]['phone']);
            txtCourse = TextEditingController(text: studentsList[listIndex]['course']);
            txtAddress = TextEditingController(text: studentsList[listIndex]['address']);

            Navigator.of(context).pushNamed('/edit');
          }, icon: Icon(Icons.edit,color: bgColor,)),

          IconButton(onPressed: () {
            studentsList.removeAt(listIndex);
            Navigator.of(context).pushReplacementNamed('/');
          }, icon: Icon(Icons.delete,color: bgColor,)),
          IconButton(onPressed: () {

            //pdf --> ui -code
            Navigator.of(context).pushNamed('/pdf');

          }, icon: Icon(Icons.picture_as_pdf,color: bgColor,)),
        ],
        backgroundColor: primary,
      ),
      body: Column(
        children: [
          const SizedBox(height: 10,),
          Container(
            height: 120,
            width: 120,
            decoration: BoxDecoration(
                color: bgColor,
                border: Border.all(color: primary,width: 2),
                shape: BoxShape.circle,
              image: DecorationImage(image: studentsList[listIndex]['image']==null?NetworkImage(netImage):MemoryImage(studentsList[listIndex]['image']))
            ),
          ),
          ListTile(
            leading: Icon(Icons.numbers,color: primary,),
            title: Text(studentsList[listIndex]['id'],style: TextStyle(color: black,fontWeight: FontWeight.w500),),
          ),
          ListTile(
            leading: Icon(Icons.person,color: primary,),
            title: Text(studentsList[listIndex]['name'],style: TextStyle(color: black,fontWeight: FontWeight.w500),),
          ),
          ListTile(
            leading: Icon(Icons.call,color: primary,),
            title: Text(studentsList[listIndex]['phone'],style: TextStyle(color: black,fontWeight: FontWeight.w500),),
          ),
          ListTile(
            leading: Icon(Icons.calendar_month_sharp,color: primary,),
            title: Text(studentsList[listIndex]['age'],style: TextStyle(color: black,fontWeight: FontWeight.w500),),
          ),
          ListTile(
            leading: Icon(Icons.school_outlined,color: primary,),
            title: Text(studentsList[listIndex]['course'],style: TextStyle(color: black,fontWeight: FontWeight.w500),),
          ),
          ListTile(
            leading: Icon(Icons.home,color: primary,),
            title: Text(studentsList[listIndex]['address'],style: TextStyle(color: black,fontWeight: FontWeight.w500),),
          ),
        ],
      ),
    );
  }
}
