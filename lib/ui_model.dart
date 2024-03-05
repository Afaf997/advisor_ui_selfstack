import 'package:flutter/material.dart';

class Students extends StatelessWidget {
  const Students({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.green,
      body: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration:const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              topRight: Radius.circular(35),
            ),
          ),
        ),
      ),
    );
  }
}

