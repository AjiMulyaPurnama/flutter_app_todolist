import 'package:flutter/material.dart';
import 'package:flutter_app_todolist/widgets/primary_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Tengah Semester',
      home: Scaffold(
        appBar: AppBar(
          title:
              const Text("MyApp", style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.orange
        ),
      body: Column(
        children: [
          Container(
                color: Colors.orange,
                height: 200,
                alignment: Alignment.center,
                  child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff7c4b6),
                        image: const DecorationImage(
                          image: 
                            NetworkImage('assets/bln1.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                        border: Border.all(
                          color: Colors.white,
                          width: 3,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 150,
                      width: 500,
                      margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 50),
                    ),
                  ],
                  ),
          ),
          Container(
                color: Colors.orange,
                height: 30,
              ),
              Padding(padding: const EdgeInsets.all(5),),
              Container(
                padding: const EdgeInsets.all(10),
                color: Colors.orange,
                height: 50,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      'Schedule',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Category',
                            style: TextStyle(color: Colors.white, fontSize: 15)
                          ),
                          Container(
                            padding: const EdgeInsets.all(5),
                            color: Colors.white,
                            height: 3,
                            width: 60,
                          )
                        ]),
                    ),
                    Text(
                      'Your Task',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
          Padding(padding: const EdgeInsets.all(5)),
          Container(
            color: Colors.white,
            height: 150,
            width: 480,
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Text('Category', style: TextStyle(color: Colors.black, fontSize: 30),),
                    Container(
                      color: Colors.orange,
                      height: 100,
                      width: 480,
                      alignment: Alignment.center,
                      child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Container(
                      color: Colors.white,
                      height: 80,
                      width: 80,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text('Work', style: TextStyle(fontSize: 20, color: Colors.red),),
                          Text('33 item', style: TextStyle(fontSize: 10, color: Colors.black)),
                          Image(image: NetworkImage('assets/line4.jpg')),
                        ]),
                    ),
                    Container(
                      color: Colors.white,
                      height: 80,
                      width: 80,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text('Study', style: TextStyle(fontSize: 20, color: Colors.green),),
                          Text('33 item', style: TextStyle(fontSize: 10, color: Colors.black)),
                          Image(image: NetworkImage('assets/line3.jpg')),
                        ]),
                    ),
                    Container(
                      color: Colors.white,
                      height: 80,
                      width: 80,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text('Homework', style: TextStyle(fontSize: 15, color: Colors.blue),),
                          Text('33 item', style: TextStyle(fontSize: 10, color: Colors.black)),
                          Image(image: NetworkImage('assets/line1.jpg')),
                        ]),
                    ),
                    Container(
                      color: Colors.white,
                      height: 80,
                      width: 80,
                      alignment: Alignment.center,
                      child: Column(
                        children: [
                          Text('Primer', style: TextStyle(fontSize: 20, color: Colors.yellow),),
                          Text('33 item', style: TextStyle(fontSize: 10, color: Colors.black)),
                          Image(image: NetworkImage('assets/line2.jpg')),
                        ]),
                    ),
                  ]
            ),
                    )
                  ]
            )
          )
        ],
      ),
    ),
    );
  }
}