import 'package:cart_app/ProductModel.dart';
import 'package:cart_app/Screens/CheckOut.dart';
import 'package:flutter/material.dart';

import 'Screens/Products.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
   
      home: CartApp()
    );
  }
}

class CartApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return CartAppState();
  }
}
class CartAppState extends State<CartApp>{
  final List<ProductModel>cart=[];
  int sum=0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return DefaultTabController(child:Scaffold(
      appBar:AppBar(
        title:Text("Cart Application"),bottom:TabBar(tabs:<Widget>[Tab(text:"Products"),Tab(text:"CheckOut")]),
      )
    ,body:TabBarView(children:<Widget>[Products((selectedProduct){
     setState(() {
       cart.add(selectedProduct);
       sum=0;
       cart.forEach((item){
       sum=sum+item.price;
     });
     });   
    }),CheckOut(cart,sum)])  
    ), length:2,);
  }

} 