import 'package:erp_system/colors.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      appBar: AppBar(
        leading: IconButton(onPressed: () {
          
        }, icon: Icon(Icons.menu,color: bgColor,)),
        title: Text(
          'ERP System',
          style: TextStyle(
            color: bgColor,
            fontWeight: FontWeight.w600,
            letterSpacing: 1
          ),
        ),
        backgroundColor: primary,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primary,
        onPressed: () {
          Navigator.of(context).pushNamed('/add');
      },child: Icon(Icons.add,color: bgColor,),),
      body: ListView.builder(itemBuilder: (context, index) => Container(
        margin: EdgeInsets.all(10),
        height: 120,
        width: double.infinity,
        decoration: BoxDecoration(
          color: secondary,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(width: 10,),
            Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: bgColor,
                  border: Border.all(color: black,width: 1.5),
                  shape: BoxShape.circle
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
              child: VerticalDivider(color: bgColor,thickness: 1.5,),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1025',style: TextStyle(color: black,fontSize: 15,fontWeight: FontWeight.w500,letterSpacing: 1),),
                  Text('Rishi Dadhich',style: TextStyle(color: black,fontSize: 18,fontWeight: FontWeight.w500,letterSpacing: 1),),
                  Text('Master in Flutter Development',style: TextStyle(color: black,fontSize: 15,fontWeight: FontWeight.w500,letterSpacing: 1),),
                  Text('+91 9825486060',style: TextStyle(color: black,fontSize: 15,fontWeight: FontWeight.w500),),
                ],
              ),
            ),
          ],
        ),
      ),itemCount: 1,),
    );
  }
}
