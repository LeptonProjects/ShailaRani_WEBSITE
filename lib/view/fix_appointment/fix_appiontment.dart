// import 'package:shaila_rani_website/features/video_management/presentation/pages/widgets/video_widgets.dart';
// import 'package:shaila_rani_website/view/widgets/textformFiledContainer/textformFiledContainer.dart';

// class FixAppointmentPage extends StatelessWidget {
//   const FixAppointmentPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         width: 500,
//         height:600,
//         color: Color.fromARGB(255, 200, 193, 193),
//         child: Center(
//           child:
//           Column(
//             children: [
//             Container(alignment: Alignment.centerRight,
//               child: Icon(Icons.close)),
//             Image.asset(""),
//             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                  Padding(
//                     padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
//                    child: TextFormFiledContainerWidget(
                               
//                               title: "Name",
//                               hintText: "Name",
//                               width: 200,),
//                  ),
//                 Padding(
//                   padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
//                   child: TextFormFiledContainerWidget(
//                     title:"",
//                     hintText:"",
//                     width: 200,
                
//                   ),
//                 ),
             
//               ],
//             ),
//             Padding(
//                padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
//               child: TextFormFiledContainerWidget(
//                     title:"",
//                     hintText:"",
//                     width: 600,
            
//                   ),
//             ),
//             Padding(
//                padding: const EdgeInsets.only(top: 10,left: 10,right: 10),
//               child: TextFormFiledContainerWidget(
//                     title:"",
//                     hintText:"",
//                     width: 600,
                    
            
//                   ),
//             ),SizedBox(height: 10,),
//             GestureDetector(
//       onTap: () {
//         Navigator.pop(context);
//       },
//       child: Container(
//         height: 30,
//         width: 80,
//         decoration: const BoxDecoration(
//           color: themeColorBlue,
//         ),
//         child: Center(
//           child: GooglePoppinsWidgets(
//               text: 'SUBMIT',
//               color: cWhite,
//               fontsize: 12,
//               fontWeight: FontWeight.bold),
//         ),
//       ),
//     )
//           ],)
//         ),
//       ),
//     );
//   }
// }

// // PopupMenuButton<String>(
// //   itemBuilder: (BuildContext context) {
// //     return <PopupMenuEntry<String>>[
// //       PopupMenuItem<String>(
// //         value: 'item1',
// //         child: Text('Item 1'),
// //       ),
// //       PopupMenuItem<String>(
// //         value: 'item2',
// //         child: Column(
// //           children: [
// //             Text('Item 2'),
// //             PopupMenuButton<String>(
// //               itemBuilder: (BuildContext context) {
// //                 return <PopupMenuEntry<String>>[
// //                   PopupMenuItem<String>(
// //                     value: 'subItem1',
// //                     child: Text('Sub Item 1'),
// //                   ),
// //                   PopupMenuItem<String>(
// //                     value: 'subItem2',
// //                     child: Text('Sub Item 2'),
// //                   ),
// //                 ];
// //               },
// //               onSelected: (String subItemValue) {
// //                 // Handle the selection of sub-items here
// //               },
// //             ),
// //           ],
// //         ),
// //       ),
// //     ];
// //   },
// //   onSelected: (String value) {
// //     // Handle the selection of items here
// //   },
// // )
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Nested Popup Menu Example'),
        ),
        body: Center(
          child: MyPopupMenu(),
        ),
      ),
    );
  }
}

class MyPopupMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<String>(
      itemBuilder: (BuildContext context) {
        return <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: 'item1',
            child: Text('Item 1'),
          ),
          PopupMenuItem<String>(
            value: 'item2',
            child: Column(
              children: [
                Text('Item 2'),
                PopupMenuButton<String>(
                  itemBuilder: (BuildContext context) {
                    return <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: 'subItem1',
                        child: Text('Sub Item 1'),
                      ),
                      PopupMenuItem<String>(
                        value: 'subItem2',
                        child: Text('Sub Item 2'),
                      ),
                    ];
                  },
                  onSelected: (String subItemValue) {
                    // Handle the selection of sub-items here
                    print('Selected sub-item: $subItemValue');
                  },
                ),
              ],
            ),
          ),
        ];
      },
      onSelected: (String value) {
        // Handle the selection of items here
        print('Selected item: $value');
      },
    );
  }
}
