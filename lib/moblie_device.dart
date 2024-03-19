import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_ui/constant/constant.dart';


class MoblieDevice extends StatefulWidget {
  const MoblieDevice({super.key});

  @override
  State<MoblieDevice> createState() => _MoblieDeviceState();
}

class _MoblieDeviceState extends State<MoblieDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar
        (
        backgroundColor: Colors.orange,
      ),

      //backgroundColor: Colors.grey[300],
      drawer:myDrawer,
      body: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: SizedBox(
             width: double.infinity,
              child: GridView.builder(
                itemCount: 4,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
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
