import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget CutomeIconButton(String image) {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, top: 4.0),
    child: InkWell(
        onTap: () {
          print("hello");
        },
        child: Card(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
          elevation: 2,
          child: Container(
            height: 36.h,
            width: 40.w,
            decoration: myBoxDecoration(),
            child: Image.asset(image),
          ),
        )),
  );
}

BoxDecoration myBoxDecoration() {
  return BoxDecoration(
    color: Colors.white,
    borderRadius:
        BorderRadius.all(Radius.circular(5.0) //         <--- border radius here
            ),
  );
}
