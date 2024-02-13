
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:ott/subscribeott.dart';
import 'package:ott/themeprovider.dart';
import 'package:ott/validationott.dart';
import 'package:provider/provider.dart';

import 'detailspagecrud.dart';
import 'editpage crud.dart';
import 'homeott.dart';

class crud extends StatefulWidget {
  const crud({Key? key}) : super(key: key);

  @override
  State<crud> createState() => _crudState();
}

class _crudState extends State<crud> {
  final TextEditingController _n = TextEditingController();
  final TextEditingController _p = TextEditingController();
  final TextEditingController _e = TextEditingController();
  final List<String> alist = [];

  void _navigateToDetail(String data) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => EditScreen(data: data),
      ),
    ).then((editedData) {
      if (editedData != null) {
        setState(() {
          alist[alist.indexWhere((element) => element == data)] = editedData;
        });
      }
    });
  }

  void _deleteItem(int index) {
    setState(() {
      alist.removeAt(index);
    });
  }

  void _addItemToList() {
    String text1 = _n.text;
    String text2 = _p.text;
    String text3 = _e.text;

    if (text1.isNotEmpty && text2.isNotEmpty && text3.isNotEmpty) {
      setState(() {
        alist.add('$text1\n$text2\n$text3');
        _n.clear();
        _p.clear();
        _e.clear();
      });
    }
  }
  void _navigateToDetails(String data) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => task2_1(getdata: data),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>home()));
            },
            child: Icon(Icons.arrow_back)),
        title: Center(child: Text('Profile',
            style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold)
        )
        ),
        actions: [
          Icon(Icons.more_vert),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height*0.10,
              width: MediaQuery.of(context).size.width*0.50,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/disney1.jpg"),
                      fit: BoxFit.cover
                  )
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _n,
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  labelText: 'Name',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _e,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: 'Email',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _p,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  labelText: 'Phone No',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: IconButton(
                  icon: Icon(Icons.brightness_4),
                  onPressed:(){
                    setState(() {
                      Provider.of<ThemeProvider>(context, listen: false).toggleTheme();
                    });
                  },
                ),
                title: Text("Dark&light"),
                tileColor: Colors.grey,
                trailing: Icon(Icons.more_vert),
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text("Settings/Help"),
                tileColor: Colors.grey,
                trailing: Icon(Icons.more_vert),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _addItemToList();
                  },
                  child: Text("Ok",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        color:Colors.black,fontSize: 16),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>subsc()));
                },
                  child: Text("Subscribe",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        color:Colors.black,fontSize: 16),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )
                  ),
                ),
                SizedBox(height: 20,),
                ElevatedButton(onPressed: (){
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context)=>valid()));
                },
                  child: Text("Log Out",
                    style: TextStyle(fontWeight: FontWeight.bold,
                        color: Colors.black, fontSize: 16),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.pink,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      )
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),
            Expanded(
              child: ListView.builder(
                itemCount: alist.length,
                itemBuilder: (BuildContext context, int index) {
                  List<String> details = alist[index].split('\n');
                  return GestureDetector(
                    onTap: () {
                      _navigateToDetails(alist[index]);
                    },
                    child: Card(
                      child: ListTile(
                        title: Column(
                          children: [
                            Text(
                              "Name:${details[0]}",
                              style: TextStyle(fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Email:${details[1]}",
                              style: TextStyle(fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Phone No:${details[2]}",
                              style: TextStyle(fontSize: 18,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.edit),
                              onPressed: () {
                                _navigateToDetail(alist[index]);
                              },
                            ),
                            IconButton(
                              icon: Icon(Icons.delete),
                              onPressed: () {
                                _deleteItem(index);
                              },
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
