import 'package:flutter/material.dart';

import 'constant/constant.dart';


class TabletDevice extends StatefulWidget {
  const TabletDevice({super.key});

  @override
  State<TabletDevice> createState() => _TabletDeviceState();
}

class _TabletDeviceState extends State<TabletDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.orange,


    ),
    backgroundColor: Colors.grey[400],
    drawer:myDrawer,
      body: Column(
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
          )
        ],
      ),
    );
  }
}
