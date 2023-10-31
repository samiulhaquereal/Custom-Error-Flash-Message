import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'image_string.dart';

class CustomSnackBarContent extends StatelessWidget {
  const CustomSnackBarContent({super.key, required this.content, required this.title});

  final String content;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
            padding: EdgeInsets.all(16),
            height: 90,
            decoration: BoxDecoration(
                color: Color(0xFFC72C41),
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Row(
              children: [
                const SizedBox(width: 48,),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(title ,style: TextStyle(fontSize: 18,color: Colors.white),),
                      SizedBox(height: 5,),
                      Text(content,style: TextStyle(fontSize: 12,color: Colors.white),maxLines: 2,overflow: TextOverflow.ellipsis,),
                    ],
                  ),
                ),
              ],
            )
        ),
        Positioned(
            bottom: 0,
            child: ClipRRect(
                borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(20)),
                child: SvgPicture.asset(tBubblesImage,height: 48,width: 40,color: Color(0xFF801336),))),
        Positioned(
            top: -13,
            left: 0,
            child: Stack(
              alignment: Alignment.center,
              children: [
                SvgPicture.asset(tFailImage,height: 40,),
                Positioned(
                    top: 10,
                    child: SvgPicture.asset(tCloseImage,height: 16,)),
              ],
            ))
      ],
    );
  }
}