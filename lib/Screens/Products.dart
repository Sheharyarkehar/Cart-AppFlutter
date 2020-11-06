import 'package:cart_app/ProductModel.dart';
import 'package:flutter/material.dart';
class Products extends StatelessWidget {
 final ValueSetter<ProductModel>value;
 Products(this.value);
  List<ProductModel>products=[
  ProductModel("Zinger Burger",150),
  ProductModel("Calzone Pizza",800),
  ProductModel("Club Sandwich",300),
  ProductModel("Cheese Paratha",220),
  ProductModel("Coldrink",60),
  ProductModel("Apple",200),
  ProductModel("Tomato",100)];
  @override
  Widget build(BuildContext context) {
    return ListView.separated(itemBuilder:(context,index){
      return ListTile(title:Text(products[index].productName),onTap:(){
       value(products[index]);
      },
   trailing:Text("Rs.${products[index].price}",style: TextStyle(fontSize:20,fontWeight:FontWeight.bold),));
    }, separatorBuilder:(context,index){return Divider();}, itemCount:products.length);
      
    
  }
}