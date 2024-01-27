import 'package:app_new/Lab6/BasicTemplate.dart';
import 'package:flutter/material.dart';

class Frame3 extends StatelessWidget {
  const Frame3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                getExpanded(color: Colors.red),
                Expanded(
                  child: Column(
                    children: [
                      getExpanded(color: Colors.green),
                      getExpanded(color: Colors.blue),
                    ],
                  ),
                ),
                getExpanded(color: Colors.indigo)
              ],
            ),
          ), //First row complete and work
          // Expanded(
          //   child: Row(
          //     children: [
          //       Expanded(
          //         child: Row(
          //           children: [
          //             getExpanded(color: Colors.red),
          //             getExpanded(color: Colors.blue),
          //           ],
          //         ),
          //       ),
          //       Column(
          //         children: [
          //           Expanded(
          //             child: Row(
          //               children: [
          //                 getExpanded(color: Colors.indigo),
          //                 getExpanded(color: Colors.white),
          //                 getExpanded(color: Colors.indigoAccent),
          //               ],
          //             ),
          //           ),
          //           Expanded(
          //             child: Row(
          //               children: [
          //                 getExpanded(color: Colors.indigo),
          //                 getExpanded(color: Colors.white),
          //                 getExpanded(color: Colors.indigoAccent),
          //               ],
          //             ),
          //           ),
          //           Expanded(
          //             child: Row(
          //               children: [
          //                 getExpanded(color: Colors.indigo),
          //                 getExpanded(color: Colors.white),
          //                 getExpanded(color: Colors.indigoAccent),
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //       Expanded(
          //         child: Row(
          //           children: [
          //             getExpanded(color: Colors.red),
          //             getExpanded(color: Colors.blue),
          //           ],
          //         ),
          //       ),
          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}
