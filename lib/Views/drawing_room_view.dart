// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class DrawingRoomView extends StatelessWidget {
  DrawingRoomView({super.key});

  var colorsList = [
    Colors.black,
    Colors.red,
    Colors.amber,
    Colors.blue,
    Colors.green,
    Colors.brown,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          GestureDetector(
            onPanStart: (details) {},
            onPanUpdate: (details) {},
            onPanEnd: (details) {},
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).padding.top,
            left: 16,
            right: 16,
            child: SizedBox(
              height: 80,
              child: ListView.separated(
                
                scrollDirection: Axis.horizontal,
                itemCount: colorsList.length,
                separatorBuilder: (_,index)=>const SizedBox(width: 8,),
                itemBuilder: (ctx, index) => Container(
                  width: 32,
                  height: 32, 
                  decoration: BoxDecoration(
                    color: colorsList[index], 
                    shape: BoxShape.circle, 
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
