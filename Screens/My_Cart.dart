import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_card/Provider/ItemsModel.dart';
class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
      ),
      body: Consumer<ItemsModel>(
          builder: (context,value,child){
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text('My Cart',
                    style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,fontFamily: 'play'),),
                ),
                Expanded(
                    child: ListView.builder(
                      padding: EdgeInsets.all(12.0),
                        itemCount: value.cartlist.length,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Card(
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade200,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: ListTile(
                                  title:Text(value.cartlist[index][0]) ,
                                  leading: Image.asset(value.cartlist[index][2]),
                                  subtitle: Text('\$' + value.cartlist[index][1]),
                                  trailing:Row(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                    Column(
                                      children: [
                                        InkWell(
                                          onTap:(){
                                            Provider.of<ItemsModel>(context,listen: false).Moreitem(index);
                                          },
                                            child: Icon(Icons.add)),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                color: Colors.grey.shade500,
                                borderRadius: BorderRadius.circular(4),
                              ),
                                child: Center(child: Text('${value.getsgop[index][4].toString()}',
                                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),))),
                                        Expanded(child: InkWell(
                                          onTap: ()=>Provider.of<ItemsModel>(context,listen: false).Removeitems(index),
                                            child: Icon(Icons.remove))),
                                      ],
                                    ),
                                     IconButton(
                                          alignment: Alignment.centerRight,
                                            onPressed: ()=>Provider.of<ItemsModel>(context,listen: false)
                                                .removelist(index),
                                            icon: Icon(Icons.cancel,color: Colors.red,)),
                                    ],
                                  )
                                ),
                              ),
                            ),
                          );})),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Container(
                    padding: EdgeInsets.all(30.0),
                    decoration: BoxDecoration(
                      color: Colors.green,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text("Total Price",
                              style: TextStyle(color: Colors.green[100],fontSize: 20),),
                            Text('\$ '  + value.Calculator()
                              ,style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold)),
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.white,
                            ),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black,
                                offset: Offset(1.0, 1.0),
                                blurStyle: BlurStyle.outer,
                                blurRadius: 2.0,
                              )
                            ]
                          ),
                          child: Row(
                            children: [
                               Container(
                                  child: Center(child:
                                  Text('Pay Now',
                                    style: TextStyle(color: Colors.white),))
                                 ,height: 50,width: 100,),
                              Icon(Icons.arrow_forward_ios,color: Colors.white,)
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },)
    );
  }
}
