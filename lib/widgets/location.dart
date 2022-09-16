import 'package:flutter/material.dart';

class Location extends StatelessWidget {
  const Location({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
      const  Icon(
          Icons.location_on_outlined,
          color: Color.fromARGB(255, 238, 234, 234),
          size: 26,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [Row(
            children: 
            const[
              Text("Palazhi",style: TextStyle(fontSize: 13,color: Color.fromARGB(255, 238, 234, 234)),),
               Icon(Icons.arrow_downward_outlined,color:  Color.fromARGB(255, 238, 234, 234),),
            ],
          ),const Text("Kozhikode",style: TextStyle(fontSize: 8, color:  Color.fromARGB(255, 238, 234, 234)),)],
        ),
       
      ],
    );
  }
}
