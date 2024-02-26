import 'package:flutter/material.dart';

class Frame2 extends StatelessWidget {
  const Frame2({super.key});

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
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            getExpanded(color: Colors.grey),
                            getExpanded(color: Colors.blue),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            getExpanded(color: Colors.black12),
                            getExpanded(color: Colors.redAccent),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Expanded(
              child: Row(
                children: [
                  getExpanded(color: Colors.white),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              getExpanded(color: Colors.red),
                              getExpanded(color: Colors.blue),
                              getExpanded(color: Colors.yellow),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              getExpanded(color: Colors.black45),
                              getExpanded(color: Colors.indigo),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              getExpanded(color: Colors.red),
                              getExpanded(color: Colors.blue),
                              getExpanded(color: Colors.yellow),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  getExpanded(color: Colors.white),
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                getExpanded(color: Colors.red),
                getExpanded(color: Colors.blue),
              ],
            ),
          )
        ],
      ),
    );
  }
}

Expanded getExpanded({color, flex = 1}) {
  return Expanded(
    flex: flex,
    child: Container(
      color: color,
    ),
  );
}
