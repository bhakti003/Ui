import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:ui/second/model.dart';
import 'package:ui/second/second.dart';
import 'package:ui/third.dart';
import 'first.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
      // home:  second(),
        initialRoute: "first",
        onGenerateRoute: Routing.genrateRoutes,
      );
    }
    );
  }
}
class Routing{
  static Route? genrateRoutes(RouteSettings settings){
    switch(settings.name){
      case "first" :
        return MaterialPageRoute(builder: (context)=>first());
      case"second" :
        return MaterialPageRoute(builder: (context)=>second());
      case"third":
        Location arg = settings.arguments as Location;
        return MaterialPageRoute(builder: (context) => third(location: arg,),);

    }
  }
}



// import 'package:flutter/material.dart';
//
// void main() => runApp(const MyApp());
//
// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);
//
//   static const String _title = 'Flutter Code Sample';
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       title: _title,
//       home: MyStatefulWidget(),
//     );
//   }
// }
//
// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);
//
//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }
//
// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   bool _pinned = true;
//   bool _snap = false;
//   bool _floating = false;
//
// // [SliverAppBar]s are typically used in [CustomScrollView.slivers], which in
// // turn can be placed in a [Scaffold.body].
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: CustomScrollView(
//         slivers: <Widget>[
//           SliverAppBar(
//             pinned: _pinned,
//             snap: _snap,
//             floating: _floating,
//             expandedHeight: 160.0,
//             flexibleSpace: const FlexibleSpaceBar(
//               title: Text('SliverAppBar'),
//               background: FlutterLogo(),
//             ),
//           ),
//           const SliverToBoxAdapter(
//             child: SizedBox(
//               height: 20,
//               child: Center(
//                 child: Text('Scroll to see the SliverAppBar in effect.'),
//               ),
//             ),
//           ),
//           SliverList(
//             delegate: SliverChildBuilderDelegate(
//                   (BuildContext context, int index) {
//                 return Container(
//                   color: index.isOdd ? Colors.white : Colors.black12,
//                   height: 100.0,
//                   child: Center(
//                     child: Text('$index', textScaleFactor: 5),
//                   ),
//                 );
//               },
//               childCount: 20,
//             ),
//           ),
//         ],
//       ),
//       bottomNavigationBar: BottomAppBar(
//         child: Padding(
//           padding: const EdgeInsets.all(8),
//           child: OverflowBar(
//             overflowAlignment: OverflowBarAlignment.center,
//             children: <Widget>[
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   const Text('pinned'),
//                   Switch(
//                     onChanged: (bool val) {
//                       setState(() {
//                         _pinned = val;
//                       });
//                     },
//                     value: _pinned,
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   const Text('snap'),
//                   Switch(
//                     onChanged: (bool val) {
//                       setState(() {
//                         _snap = val;
//                         // Snapping only applies when the app bar is floating.
//                         _floating = _floating || _snap;
//                       });
//                     },
//                     value: _snap,
//                   ),
//                 ],
//               ),
//               Row(
//                 mainAxisSize: MainAxisSize.min,
//                 children: <Widget>[
//                   const Text('floating'),
//                   Switch(
//                     onChanged: (bool val) {
//                       print(val);
//                       setState(() {
//                         _floating = val;
//                         _snap = _snap && _floating;
//                       });
//                     },
//                     value: _floating,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
