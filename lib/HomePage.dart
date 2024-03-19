import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final Widget moblie_device;
  final Widget tablet_device;
  final Widget desktop_device;

  const HomePage({
    required this.moblie_device,
    required this.tablet_device,
    required this.desktop_device
  });



  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context, constraints) {
          if(constraints.maxWidth<600)
            {
              return moblie_device;
            }
          else if(constraints.maxWidth>600 && constraints.maxWidth<1000)
            {
              return tablet_device;
            }
          else{
            return desktop_device;
          }
        },
    );
  }
}
