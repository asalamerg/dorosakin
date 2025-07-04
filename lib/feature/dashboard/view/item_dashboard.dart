
import 'package:dorosakin/feature/dashboard/model/item_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ItemDashboard extends  StatelessWidget{
  ItemModel itemModel ;

  ItemDashboard({required this.itemModel});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 161.26.w,
      height: 203.89.h,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: itemModel.color ?? Colors.yellow ,
        borderRadius: BorderRadius.circular(20) ,

      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Icon(Icons.add_a_photo),) ,
          SizedBox(height: 15,),
          Text(itemModel.title ,style: TextStyle(fontSize: 14, color: Colors.white),) ,
          SizedBox(height: 5,),
          Text(  itemModel.number,style: TextStyle(fontSize: 14, color: Colors.white))

        ],
      ),
    );
  }
}