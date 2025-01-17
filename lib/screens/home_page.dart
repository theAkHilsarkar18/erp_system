import 'package:erp_system/colors.dart';
import 'package:erp_system/screens/add_student_page.dart';
import 'package:erp_system/utils.dart';
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
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: bgColor,
          ),
        ),
        title: Text(
          'ERP System',
          style: TextStyle(
            color: bgColor,
            fontWeight: FontWeight.w600,
            letterSpacing: 1,
          ),
        ),
        backgroundColor: primary,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: primary,
        onPressed: () {
          Navigator.of(context).pushNamed('/add');
        },
        child: Icon(
          Icons.add,
          color: bgColor,
        ),
      ),
      body: Column(
        children: [
          inputBox(label: 'Search', txtController: TextEditingController()),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  listIndex = index;
                  Navigator.of(context).pushNamed('/detail');
                },
                child: Container(
                  margin: const EdgeInsets.all(10),
                  height: 120,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: secondary,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 10,
                      ),
                      Container(
                        height: 80,
                        width: 80,
                        decoration: BoxDecoration(
                            color: bgColor,
                            border: Border.all(color: black, width: 1.5),
                            shape: BoxShape.circle,
                            image: DecorationImage(image: studentsList[index]['image']==null?NetworkImage(netImage):MemoryImage(studentsList[index]['image']))
                        ),
                      ),
                      Padding(
                        padding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
                        child: VerticalDivider(
                          color: bgColor,
                          thickness: 1.5,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              studentsList[index]['id'],
                              style: TextStyle(
                                  color: black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1),
                            ),
                            Text(
                              studentsList[index]['name'],
                              style: TextStyle(
                                  color: black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1),
                            ),
                            SizedBox(
                              width: 250,
                              child: Text(
                                studentsList[index]['course'],
                                style: TextStyle(
                                  color: black,
                                  fontSize: 15,
                                  overflow: TextOverflow.ellipsis,
                                  fontWeight: FontWeight.w500,
                                  letterSpacing: 1,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              itemCount: studentsList.length,
            ),
          ),
        ],
      ),
    );
  }
}

// build method ->
