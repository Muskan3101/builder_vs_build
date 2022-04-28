import 'package:builder_vs_build/newpage.dart';
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
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Builder v/s Build"),
      ),
      body: Builder(
          builder: (BuildContext context){
            return Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                      hintText: "Name"
                  ),
                ),
                ElevatedButton(onPressed: (){
                  print(Scaffold.of(context).hasAppBar);
                },
                    child: Text("Scaffold of")
                ),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>NewPAge()));
                },
                    child: Text("PRESS")
                ),
              ],
            );
          }
      )
    );
  }
}
