//
// import 'package:flutter/material.dart';
// import 'package:tech_cscommunity/views/screens/home_screen/widgets/custom_tetxformfield.dart';
//
// void main() => runApp(MyApp());
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: MyScreen(),
//     );
//   }
// }
//
// class MyScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Tabbed Screen'),
//       ),
//       body: OverallList(),
//     );
//   }
// }
//
// class OverallList extends StatefulWidget {
//   @override
//   _OverallListState createState() => _OverallListState();
// }
//
// class _OverallListState extends State<OverallList> {
//   ScrollController _scrollController = ScrollController();
//
//   @override
//   Widget build(BuildContext context) {
//     return ListView(
//       controller: _scrollController,
//       children: <Widget>[
//         // Red Container with half screen height
//         CustomTextFormField(),
//         Container(
//           decoration: BoxDecoration(
//             image: DecorationImage(image: AssetImage('assets/images/du.jpg'),fit: BoxFit.fill)
//           ),
//           height: MediaQuery.of(context).size.height / 2,
//         ),
//         // TabBar with 2 tabs
//         DefaultTabController(
//           length: 2,
//           child: Column(
//             children: <Widget>[
//               TabBar(
//                 labelStyle: TextStyle(color: Colors.black),
//                 indicatorColor: Colors.black,
//                 labelColor: Colors.black,
//                 tabs: <Widget>[
//                   Tab(text: 'Tab 1'),
//                   Tab(text: 'Tab 2'),
//                 ],
//               ),
//               // TabBarView for the content of tabs
//               Container(
//                 height: MediaQuery.of(context).size.height / 2,
//                 child: TabBarView(
//                   children: <Widget>[
//                     // Content of Tab 1
//                     NotificationListener<ScrollNotification>(
//                       onNotification: (notification) {
//                         if (notification is ScrollUpdateNotification) {
//                           _scrollController.jumpTo(_scrollController.offset + notification.scrollDelta!);
//                         }
//                         return true;
//                       },
//                       child: ListView(
//                         physics: ClampingScrollPhysics(),
//                         children: List.generate(50, (index) {
//                           return ListTile(title: Text('Tab 1 - Item $index'));
//                         }),
//                       ),
//                     ),
//                     // Content of Tab 2
//                     NotificationListener<ScrollNotification>(
//                       onNotification: ( notification) {
//                         if (notification is ScrollUpdateNotification) {
//                           _scrollController.jumpTo(_scrollController.offset + notification.scrollDelta!);
//                         }
//                         return true;
//                       },
//                       child: ListView(
//                         physics: ClampingScrollPhysics(),
//                         children: List.generate(50, (index) {
//                           return ListTile(title: Text('Tab 2 - Item ${index + 50}'));
//                         }),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//         // Red Container with half screen height
//      ElevatedButton(onPressed: (){}, child: Text('Register'))
//
//
//       ],
//     );
//   }
//
//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }
// }


import 'package:flutter/material.dart';

import 'views/screens/home_screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

/// this is my carusol slider that we use in feature



