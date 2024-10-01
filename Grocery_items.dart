import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shopping_card/Provider/ItemsModel.dart';
class GroceryItemslist extends StatelessWidget {
  final String ItemName;
  final String ItemPrice;
  final String Imagepath;
  final color;
  final quantity;
  void Function()? onpressed;
   GroceryItemslist({super.key,
    required this.ItemPrice,
    required this.color,
    required this.Imagepath,
    required this.ItemName,
    required this.onpressed,
     required this.quantity,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        padding: EdgeInsets.all(12.0),
        decoration: BoxDecoration(
          color: color[100],
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image(image: AssetImage(Imagepath,),height: 65,),
            ),
            Text(ItemName.toString()),
            MaterialButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              color: color,
                onPressed:onpressed
              ,child: Text('\$'+ ItemPrice.toString()),)
            // InkWell(
            //   onTap: (){
            //     print(onpressed.toString());
            //     onpressed;
            //   },
            //   child: Container(
            //     width: 100,
            //     height: 30,
            //     decoration: BoxDecoration(
            //       color:  color[700],
            //       borderRadius: BorderRadius.circular(10),
            //     ),
            //     child: Center(child: Text('\$'  +ItemPrice.toString(),style: TextStyle(fontSize: 25,color: Colors.white),)),
            //   ),
            // )
          ],
        ),
      ),
    );
  }
}
