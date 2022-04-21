import 'package:flutter/material.dart';


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
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
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
                          width: 12,
                        ),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      height: 150,
                      width: 500,
                      margin: const EdgeInsets.only(left: 30.0, right: 30.0, top: 50),
                    )
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
                    Container(
                      child: Column(
                        children: [
                          Text(
                            'Schedule',
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
                      'Category',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    Text(
                      'Your Task',
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ],
                ),
              ),
              Padding(padding: const EdgeInsets.all(10),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                color: Colors.white,
                height: 100,
                width: 400,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image(
                      image: NetworkImage(
                        'assets/tgl3.jpg',
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(children: <Widget>[
                        Text(
                          'Zoom Meeting E-Business',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          'http://jti.polinema.ac.id/ruang-kelas/',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
              ),
              Container(
                color: Colors.orange,
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
              ),
              Container(
                padding: const EdgeInsets.all(15),
                color: Colors.white,
                height: 100,
                width: 400,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image(
                      image: NetworkImage(
                        'assets/tgl1.jpg',
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(children: <Widget>[
                        Text(
                          'Pickup Packagen in JNT    ',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          'Jl. Joyosuko Metro, no 42',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                      ]),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
              ),
              Container(
                color: Colors.orange,
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.all(5),
              ),
              Container(
                padding: const EdgeInsets.all(15),
               color: Colors.white,
                height: 100,
                width: 400,
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image(
                      image: NetworkImage(
                        'assets/tgl2.jpg',
                      ),
                    ),
                    Container(
                      alignment: Alignment.center,
                      child: Column(children: <Widget>[
                        Text(
                          'Go to Campus Polinema',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                        Text(
                          '',
                          style: TextStyle(color: Colors.black, fontSize: 15),
                        )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
              ),
              
                  ],
                ),
              ),
            
            ],
          )
        ),
      )
    );
  }
}