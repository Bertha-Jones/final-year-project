import 'package:flutter/material.dart';
import 'sidebar.dart';
import 'package:project_app/components/my_searchbar.dart';


class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  'Current Location',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),

             
           const  Text('Prof Alexander Kwapong hall',
           textAlign: TextAlign.center,
        style: TextStyle(fontSize: 13, color: Color.fromARGB(255, 180, 180, 180)),
        
           ),
          ],

          
        ),
        centerTitle: true,
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.notifications),
          )
        ],
        foregroundColor: const Color.fromARGB(255, 76, 76, 76),
        elevation: 0,
        backgroundColor: const Color.fromARGB(255, 247, 250, 255),
      ),
       drawer: const SafeArea(child: Sidebar()),


    );
  }
}
