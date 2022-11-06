import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class draw extends StatelessWidget{
 String ?email, pass;
 draw({required this.email,required this.pass});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
appBar: AppBar(
),
      drawer: Drawer(
        child: ListView(

          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text('Content of Email and Password',style: TextStyle(fontSize: 25),),
            ),
            ListTile(
              title:  Text('${email}'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title:  Text('${pass}'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),

    );
  }
}