import 'package:dorosakin/feature/dashboard/model/item_model.dart';
import 'package:dorosakin/feature/dashboard/view/item_dashboard.dart';
import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DashboardPage extends StatefulWidget {
  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30.h),
          Row(
            children: [
              Text("Hi, Dorosak 👋",
                style: AppTheme.listTheme.textTheme.displayMedium,),
              Spacer(),
              Image.asset(
                "assets/image/profile.png", height: 50.h, width: 50.w,),
            ],
          ),

          SizedBox(height: 25.h),

          Text(" All Categories",
            style: AppTheme.listTheme.textTheme.displayMedium,),

          SizedBox(height: 14.h),

          Container(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 3),
            decoration: BoxDecoration(
                color: Color(0XFFFFFFFF),
                borderRadius: BorderRadius.circular(12)
            ),
            child: Row(children: [
              Icon(Icons.search, size: 24.sp, color: Color(0XFFDFDFDF),),
              SizedBox(width: 30,),
              Expanded(child: TextField(
                decoration: InputDecoration(
                  hintText: "Search for anything",
                  hintStyle: TextStyle(
                      color: Color(0XFFDFDFDF), fontSize: 16.sp),
                ),
              )),

            ],),),

          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2),
              itemBuilder: (context, index) => ItemDashboard(itemModel: data[index],), itemCount: 8,),
          )

        ],),
    );
  }
  List<ItemModel> data=[
    ItemModel(color: Color(0XFFFFAC71), title: "Phrases   ", routeName: "routeName", number: "333"),
    ItemModel(color: Color(0XFF02AAB0), title: "Daily English", routeName: "routeName", number: "853"),
    ItemModel(color: Color(0XFFFAABAB), title: "Basic English", routeName: "routeName", number: "651"),
    ItemModel(color: Color(0XFF7CA4E9), title: "Punctuation", routeName: "routeName", number: "985"),
    ItemModel(color: Color(0XFF76809C), title: "Phrasal Verbs", routeName: "routeName", number: "123"),
    ItemModel(color: Color(0XFFFF6272), title: "English Idioms", routeName: "routeName", number: "351"),
    ItemModel(color: Color(0XFFA0D2F1), title: "Quotes", routeName: "routeName", number: "762"),
    ItemModel(color: Color(0XFFFFD157), title: "Common Words", routeName: "routeName", number: "861"),




  ];
}