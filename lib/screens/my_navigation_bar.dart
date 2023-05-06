// import 'dart:ui';

// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
// import 'package:flutter/src/widgets/placeholder.dart';

// class MyNavigationBar extends StatefulWidget {
//   MyNavigationBar({super.key});
//   int _selectedIndex = 0;
//   static const List<Widget> _widgetOptions = <Widget>[
//     Text('Profile Page',
//         style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
//     Text('Profile Page',
//         style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
//     Text('Profile Page',
//         style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
//     Text('Profile Page',
//         style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
//   ];

//   @override
//   State<MyNavigationBar> createState() => _MyNavigationBarState();
// }

// class _MyNavigationBarState extends State<MyNavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: _widgetOptions.elementAt(_selectedIndex),
//       ),
//       bottomNavigationBar: BottomNavigationBar(
//           backgroundColor: Color.fromARGB(224, 234, 233, 233),
//           items: const <BottomNavigationBarItem>[
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.home,
//                 color: Colors.grey,
//               ),
//               label: 'Home',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.store,
//                 color: Colors.grey,
//               ),
//               label: 'Store',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.category,
//                 color: Colors.grey,
//               ),
//               label: 'Product',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.shop,
//                 color: Colors.grey,
//               ),
//               label: 'Orders',
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(
//                 Icons.person,
//                 color: Colors.grey,
//               ),
//               label: 'Me',
//             ),
//           ],
//           type: BottomNavigationBarType.shifting,
//           currentIndex: _selectedIndex,
//           selectedItemColor: Colors.black,
//           iconSize: 40,
//           onTap: _onItemTapped,
//           elevation: 5),
//     );
//   }
// }
