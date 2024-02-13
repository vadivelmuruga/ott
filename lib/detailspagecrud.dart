
import 'package:flutter/material.dart';

class task2_1 extends StatefulWidget {
  final String getdata;

  task2_1({Key? key, required this.getdata,}) : super(key: key);

  @override
  State<task2_1> createState() => _task2_1State();
}

class _task2_1State extends State<task2_1> {
  @override
  Widget build(BuildContext context) {
    List<String> dataList = widget.getdata.split('\n');

    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Page',
          style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Card(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Name: ${dataList[0]}',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Email: ${dataList[1]}',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'Phone No: ${dataList[2]}',
                      style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
