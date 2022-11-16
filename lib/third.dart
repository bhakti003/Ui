import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui/second/model.dart';
class third extends StatefulWidget {
  Location? location;
  String? arg;
  third({Key? key,this.location,this.arg}) : super(key: key);

  @override
  State<third> createState() => _thirdState();
}

class _thirdState extends State<third> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Third Page')),
     body:

     Container(
       height: 20.h,
       width: 100.w,
       child: Container(
        height: 10.h,
        width: 50.w,
        decoration: BoxDecoration(
          //  color: Colors.red,
            image: DecorationImage(
                image: AssetImage(widget.location!.image!),
                fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(6.w)),
        child: Stack(
          children: [
            Positioned(
              top: 12.h,
              left: 4.w,
              child: Column(
                children: [
                  Container(
                      height: 6.h,
                      width: 40.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2.w),
                        color: Colors.black.withOpacity(0.5),
                      ),
                      child: Column(
                        crossAxisAlignment:
                        CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.location!.name!,
                            style: TextStyle(color: Colors.white),
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_on,
                                color: Colors.white,
                              ),
                              Text(
                                widget.location!.subname!,
                                style: TextStyle(
                                    color: Colors.white),
                              ),
                              SizedBox(
                                width: 11.w,
                              ),
                              Icon(
                                Icons.arrow_circle_right,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ],
                      )),
                ],
              ),
            ),
          ],
        ),
    ),
     ),
    );

  }
}
