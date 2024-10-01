import 'package:flutter/material.dart';
class ItemsModel extends ChangeNotifier{
  final List _shopeitems=[
    ['Avocado','4.00','assests/images/avocado.png',Colors.green,1],
    ['Banan','2.00','assests/images/banan.png',Colors.yellow,1],
    ['Water','3.00','assests/images/water-bottle.png',Colors.brown,1],
    ['Chicken','6.00','assests/images/roast-chicken.png',Colors.redAccent,1],
  ];
  get getsgop=>_shopeitems;
  List cartlist=[];
  get cartitems=>cartlist;
  void addlist(int index){
    cartlist.add(_shopeitems[index]);
    notifyListeners();
  }
  void removelist(int index){
    cartlist.removeAt(index);
    notifyListeners();
  }
void Moreitem(int index){
      cartlist[index][4]++;
      notifyListeners();
}
void Removeitems(int index){
  if(getsgop[index][4]>1){
    getsgop[index][4]--;
    notifyListeners();
  }

}

  String Calculator(){
    double total=0;
    for(int i=0;i<cartlist.length;i++){
      total+=double.parse(cartlist[i][1])*double.parse(getsgop[i][4].toString());
    }
    return total.toStringAsFixed(2);
  }
}