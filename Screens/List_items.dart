import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_card/Provider/ItemsModel.dart';
import '../Grocery_items.dart';
import 'My_Cart.dart';
class ListItems extends StatefulWidget {
  const ListItems({super.key});

  @override
  State<ListItems> createState() => _ListItemsState();
}

class _ListItemsState extends State<ListItems> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
          onPressed: (){
          Navigator.push(
              context, MaterialPageRoute(
              builder: (context)=>Cart()));
          },child: Icon(Icons.shopping_bag_outlined,color: Colors.white,),),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 40,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text('Good Moring'),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24.0),
              child: Text("Let's order fresh items fro you",
                style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,fontFamily: 'play'),),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Text('Categories',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,fontFamily: 'font'),),
            ),
            SizedBox(height: 10,),
            Consumer<ItemsModel>(
                builder: (context,value,child){
                  return Expanded(
                      child: GridView.builder(
                        itemCount: value.getsgop.length,
                          padding: EdgeInsets.all(12.0),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2,childAspectRatio: 1/1.2),
                          itemBuilder: (context,index){
                            return
                               GroceryItemslist(
                                  ItemPrice: value.getsgop[index][1],
                                  color: value.getsgop[index][3],
                                  Imagepath:value.getsgop[index][2] ,
                                  ItemName: value.getsgop[index][0],
                                 quantity: value.getsgop[index][4],
                                 onpressed: (){
                                    Provider.of<ItemsModel>(context,listen: false).addlist(index);
                                 },
                               );
                          }));
                })
          ],
        ),
      ),
    );
  }
}
