import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_statemanagement/CounterModel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<CounterModel>(
      create:(context)=>CounterModel(),child:MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home:CounterApp(),
    ),
    );
  }
}
class CounterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(
        child:Consumer<CounterModel>(builder:(context,CounterModel,child){
          return Text("${CounterModel.GetCount}");
        }
      )),
      appBar:AppBar(title:Text("Provider"),),
      floatingActionButton: FloatingActionButton(child:Icon(Icons.add),onPressed:(){
        Provider.of<CounterModel>(context,listen:false).incrementCounter();
      },),
      
    );
  }
}