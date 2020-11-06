import 'package:flutter/material.dart';
class CheckOut extends StatelessWidget {
  final cart;
  final sum;
  CheckOut(this.cart,this.sum);
  @override 
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: <Widget>[ListView.separated(itemBuilder:(context,index){
      return ListTile(title:Text(cart[index].productName),onTap:(){
 
      },
      trailing:Text("RS:${cart[index].price}",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold)));
    }, separatorBuilder: (context,index){return Divider();}, itemCount:cart.length,shrinkWrap:true),
    Divider(),Text("Total: Rs.$sum",style:TextStyle(fontWeight:FontWeight.bold,fontSize:17,backgroundColor: Colors.blue,color:Colors.white),)],
    );
      
  }
}