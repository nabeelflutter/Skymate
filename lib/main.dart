

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';
import 'package:tech_cscommunity/routes/routes.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/TextWithHoverContainer.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/custom_tetxformfield.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/onhover_color_changebutton.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/onhover_container.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/shift_gradiant_onhover.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/stageredanimation/stagered_animation.dart';
import 'package:tech_cscommunity/views/screens/our_services/our_services_screen.dart';
import 'constants/constants.dart';
import 'views/screens/home_screen/home_screen.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: Routes.generateRoutes,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       primaryColor: Colors.white,
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
//
// import 'package:flutter/material.dart';
//
//
//
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Geeks For Geeks',
//       theme: ThemeData(
//         primarySwatch: Colors.green,
//       ),
//       home: MyHomePage(title: 'Geeks For Geeks'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   ScrollController listScrollController = ScrollController();
//   bool isFABVisible = false;
//
//   @override
//   void initState() {
//     super.initState();
//
//     // Add a listener to the ScrollController to handle FAB visibility
//     listScrollController.addListener(() {
//       if (listScrollController.offset > 100 && !isFABVisible) {
//         setState(() {
//           isFABVisible = true;
//         });
//       } else if (listScrollController.offset <= 100 && isFABVisible) {
//         setState(() {
//           isFABVisible = false;
//         });
//       }
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       floatingActionButton: Visibility(
//         visible: isFABVisible,
//         child: FloatingActionButton(
//           onPressed: () {
//             if (listScrollController.hasClients) {
//               final position = listScrollController.position.minScrollExtent;
//               listScrollController.animateTo(
//                 position,
//                 duration: Duration(seconds: 3),
//                 curve: Curves.easeOut,
//               );
//             }
//           },
//           isExtended: true,
//           tooltip: "Scroll to Top",
//           child: Icon(Icons.arrow_upward),
//         ),
//       ),
//       body: ListView.builder(
//         controller: listScrollController,
//         itemCount: 100,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text("Item ${index + 1}"),
//           );
//         },
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     // Dispose of the ScrollController to avoid memory leaks
//     listScrollController.dispose();
//     super.dispose();
//   }
// }
