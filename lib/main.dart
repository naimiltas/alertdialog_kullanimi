// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        
        
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              child: Text("Basit Alert"),
              onPressed: (){


                showDialog(
                  context: context,
                  builder: (BuildContext context){
                    return AlertDialog(
                      title: Text("Başlık"),
                      content: Text("İçerik"),
                      actions: [
                        FlatButton(
                          child: Text("İptal"),
                          onPressed: (){
                          Navigator.pop(context);
                          },
                        ),
                        FlatButton(
                          child: Text("Tamam"),
                          onPressed: (){
                            print("Tamam seçildi");
                          },
                        ),
                      ]
                    );
                  }
                );
              },
            )
          ],
        ),
      ),
     
    );
  }
}
