import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:responsive_ui/constant/constant.dart';

class DesktopDevice extends StatefulWidget {
  const DesktopDevice({super.key});

  @override
  State<DesktopDevice> createState() => _DesktopDeviceState();
}

class _DesktopDeviceState extends State<DesktopDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.white,
        body: Row(
          children: [
            // The 1st part
            myDrawer,

            // The 2nd part
            Expanded(
              flex: 4,
              child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 4,
                  child: SizedBox(
                    width: double.infinity,
                    child: GridView.builder(
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
                        itemBuilder: (context, index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.cyan,
                            ),
                          );
                        }
                    ),
                  ),
                ),
                Expanded(

                    child: ListView.builder(
                        itemCount: 5,
                        itemBuilder: (context,index){
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              color: Colors.deepOrangeAccent,
                              height: 80,
                            ),
                          );

                        }
                    )
                ),

              ],
            ),
            ),

            // The 3rd part
            Expanded(
              flex: 1,
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                        color: Colors.purpleAccent,
                      ),
                    )
                  ],
                )
            )

          ],
        ),
    );
  }
}
