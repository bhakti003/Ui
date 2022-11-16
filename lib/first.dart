import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
class first extends StatefulWidget {
  const first({Key? key}) : super(key: key);

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Stack(
        children: [
      Container(
      decoration:BoxDecoration(
      image: DecorationImage(image: AssetImage('assets/pic1.jpeg'),fit: BoxFit.cover),
    ),
      ),
          CustomContainer(image: 'assets/ff2.webp',circular: 60.w,width: 50.w,height: 15.h,left: 5.w,top: 7.h),
          CustomContainer(top: 15.h,left: 54.w,height: 32.h,width: 40.w,image: 'assets/ff3.jpeg',circular: 90.w),
          CustomContainer(top: 25.h,left: 7.w,height: 32.h,width: 40.w,image: 'assets/f2.jpeg',circular: 90.w),
          CustomContainer(top: 50.h,left: 45.w,height: 15.h,width: 50.w,image: 'assets/ff2.webp',circular: 60.w),
          Positioned(top: 65.h, child: Text('  The best camping\n  experience starts\n  here',style: TextStyle(fontSize: 30.sp,fontWeight: FontWeight.bold),)),
          Positioned(top: 84.h, child: Text('    Find and book your perfect camp site\n    anywhere in the world',style: TextStyle(fontSize: 14.sp),)),
          Positioned(bottom:0.h,child: GestureDetector(onTap: (){Navigator.pushNamed(context, 'second');},
            child: Container(height: 7.h,width: 100.w,child: Center(child: Text('Get Started',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.white),)), decoration:BoxDecoration(color: Color(0xff092d1f),
              )),
          ),),
    ]),

    );
  }
//   Positioned CustomContainer({required double topPosition, required double leftPosition, required double height, required double width,}) {
//     return Positioned(top: topPosition,left: leftPosition,
//           child: Container(
//             height: height,
//             width: width,
//             decoration: BoxDecoration(
//                 image: DecorationImage(image: AssetImage('assets/f3.jpeg'),fit: BoxFit.cover),
//                 borderRadius: BorderRadius.circular(90.w),
//                // color: Colors.red
//             ),
//           ),
//         );
//   }
 }
 Positioned CustomContainer({double? top,double? left,double? height,double?width,String?image,double?circular}){
  return Positioned(
    top:top,  left: left,
    child: Container(
      height:height,width:width,decoration: BoxDecoration(borderRadius: BorderRadius.circular(circular!),
    image:DecorationImage(image: AssetImage(image!),fit: BoxFit.fill) ),));
}



// Positioned(top: 7.h,left: 5.w,
//   child: Container(
//     height: 15.h,
//     width: 50.w,
//     decoration: BoxDecoration(
//       image: DecorationImage(image: AssetImage('assets/ff2.webp'),fit: BoxFit.cover),
//       borderRadius: BorderRadius.circular(60.w),
//       //  color: Colors.red
//     ),
//   ),
// ),

// Positioned(top:15.h,left: 54.w,
//     child: Container(
//   height: 32.h,
//   width: 40.w,
//       decoration: BoxDecoration(
//         image: DecorationImage(image: AssetImage('assets/ff3.jpeg'),fit: BoxFit.cover),
//           borderRadius: BorderRadius.circular(90.w),
//       ),
//
// )),

//  Positioned(top: 25.h,left: 7.w,
//      child: Container(
//        height: 32.h,
//        width: 40.w,
//        decoration: BoxDecoration(
//          image: DecorationImage(image: AssetImage('assets/f2.jpeg'),fit: BoxFit.cover),
//          borderRadius: BorderRadius.circular(90.w),
//        ),
//      )),

// )),