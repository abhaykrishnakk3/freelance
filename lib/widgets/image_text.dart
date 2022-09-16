import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageText extends StatelessWidget {
  String image;
  String text;
   ImageText({Key? key,required this.image,required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
    SizedBox(
      height: MediaQuery.of(context).size.height*0.09,
        
          width: MediaQuery.of(context).size.width*0.2,
      child: Container(
        
        height: MediaQuery.of(context).size.height*0.09,
      
        width: MediaQuery.of(context).size.width*0.2,
          decoration:  BoxDecoration(
            boxShadow: const[
              BoxShadow(
                color: Colors.black,
                offset: Offset(0,1),
                blurRadius: 3)
            ],
            borderRadius: BorderRadius.circular(10),
            image:  DecorationImage(
              
                image:  NetworkImage(image),
                fit: BoxFit.cover,
            ),
           
          )
      ),
    ),
    SizedBox(height: 7.h,),
      Text(text,style:const TextStyle(fontWeight: FontWeight.bold),)
    ],);
  }
}