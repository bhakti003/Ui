import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:ui/second/model.dart';

class second extends StatefulWidget {
  const second({Key? key}) : super(key: key);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5c2708).withOpacity(0.4),
        actions: [Icon(Icons.notifications)],
      ),
      drawer: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(bottomRight: Radius.circular(10.h))),
        child: ListView(children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.grey.withOpacity(0.5)),
            accountName: Text(
              'Robert P.Green',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            accountEmail: Text(
              'roobert22@gmail.com',
            ),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('assets/cat.jpeg'),
            ),
          ),
          CustomList(icon: Icon(Icons.account_box,),text: 'My profile'),
          CustomList(icon: Icon(Icons.location_on), text: 'Brower place'),
          CustomList(icon: Icon(Icons.crisis_alert), text: 'Create new plan'),
          CustomList(icon: Icon(Icons.payments_sharp,), text: 'payment method'),
          CustomList(icon: Icon(Icons.bookmark_outlined), text: 'BookMark'),
          CustomList(icon: Icon(Icons.circle_outlined), text: 'About'),
          CustomList(icon: Icon(Icons.privacy_tip), text: 'Privacy policy'),
          CustomList(icon: Icon(Icons.settings), text: 'Setting'),
          Divider(
            height: 4.h,
            thickness: 1.h,
            endIndent: 0.w,
            color: Colors.grey,
          ),
          CustomList(icon: Icon(Icons.share), text: 'Tell a friend'),
          CustomList(icon: Icon(Icons.phone), text: 'help and feedback'),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        backgroundColor: Color(0xff092d1f),
        child: const Icon(Icons.search),
      ),
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            height: 30.h,
            width: 100.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/f1.jpeg'), fit: BoxFit.cover),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(text: TextSpan(text: 'Camp with',style: TextStyle(color: Colors.white,fontSize: 9.w),
                      children: [TextSpan(text: '  peace \n',style: TextStyle(color: Colors.red,fontSize: 8.w),
                      children: [TextSpan(text: 'of mind',style: TextStyle(color: Colors.red,fontSize:8.w))])]),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 27.h,
            ),
            height: 300.h,
            width: 100.w,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.w),
                  topRight: Radius.circular(5.w)),
            ),
            padding: EdgeInsets.only(top: 3.h, left: 5.w, right: 3.w),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              CustomWidget(text: 'Catogories'),
              SizedBox(
                height: 1.h,
              ),
              Container(
                // margin: EdgeInsets.only(top: 35.h, left: 5.w),
                height: 7.h, width: 100.w,
                //  color: Colors.blue,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  scrollDirection: Axis.horizontal,
                  itemCount: CatogoriesList.length,
                  itemBuilder: ((context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, 'third');
                      },
                      child: Container(
                        height: 10.h,
                        width: 30.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(2.w),
                          color: Colors.grey.withOpacity(0.1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 0.h),
                              height: 5.h,
                              width: 10.w,
                              // color: Colors.blue,
                              decoration: BoxDecoration(
                                  //color: Colors.blue,
                                  borderRadius: BorderRadius.circular(2.w),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          CatogoriesList[index].image!),
                                      fit: BoxFit.fill)),
                            ),
                            Text(CatogoriesList[index].name!),
                          ],
                        ),
                      ),
                    );
                  }),
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 7.w,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 2.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomWidget(text: 'Most popular places '),
                  Text(
                    'See more',
                    style: TextStyle(fontSize: 4.w, color: Colors.red),
                  )
                ],
              ),
              SizedBox(
                height: 2.h,
              ),
              Container(
                height: 20.h,
                width: 100.w,
                // color: Colors.grey,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  physics: BouncingScrollPhysics(),
                  itemCount: LocationList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "third",arguments: LocationList[index]);
                      },
                      child: Container(
                        height: 10.h,
                        width: 50.w,
                        decoration: BoxDecoration(
                            //  color: Colors.red,
                            image: DecorationImage(
                                image: AssetImage(LocationList[index].image!),
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
                                            LocationList[index].name!,
                                            style: TextStyle(color: Colors.white),
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.location_on,
                                                color: Colors.white,
                                              ),
                                              Text(
                                                LocationList[index].subname!,
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
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      width: 5.w,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 3.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomWidget(text: 'My Schedule'),
                  Text(
                    'See more',
                    style: TextStyle(fontSize: 4.w, color: Colors.red),
                  )
                ],
              ),
              SizedBox(
                height: 1.h,
              ),
              Container(
                // margin: EdgeInsets.only(top: 35.h, left: 5.w),
                height: 15.h, width: 90.w,
                //  color: Colors.blue,
                child: ListView.separated(
                  physics: BouncingScrollPhysics(),
                  // scrollDirection: Axis.horizontal,
                  itemCount: CatogoriesList.length,
                  itemBuilder: ((context, index) {
                    return
                      Container(
                        height: 10.h,
                        width: 10.w,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black12),
                          borderRadius: BorderRadius.circular(2.w),
                          color: Colors.grey.withOpacity(0.1),
                        ),
                        child: Row(
                          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              margin: EdgeInsets.only(left: 3.w),
                              height: 8.h,
                              width: 15.w,
                              // color: Colors.blue,
                              decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(2.w),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          ScheduleList[index].image!),
                                      fit: BoxFit.fill)),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 60, left: 12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  CustomWidget(text: ScheduleList[index].name!),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.location_on,
                                        color: Colors.red,
                                      ),
                                      Text(ScheduleList[index].location!),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.date_range,
                                        color: Colors.red,
                                      ),
                                      Text(ScheduleList[index].location!),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 4.h,
                              width: 22.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(3.w),
                                color: Colors.red,
                              ),
                              child: Center(
                                  child: CustomWidget(
                                      text: 'Joined',
                                      color: Colors.white,
                                      size: 4.w)),
                            )
                          ],
                        ),
                      );
                  }),
                  separatorBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 3.h,
                    );
                  },
                ),
              )
            ]),
          ),
        ]),
      ),
    );
  }
}

Text CustomWidget(
    {String? text, Color? color, double? size, String? fontWeight}) {
  return Text(
    text!,
    style: TextStyle(
      color: color ?? Colors.black,
      fontSize: size ?? 5.w,
    ),
  );
}

ListTile CustomList({Icon? icon, String? text, double? sizee}) {
  return ListTile(
    leading:icon,
    title: Text(text!),

  );
}
