import 'package:flutter/material.dart';

import 'data.dart';
import 'gender_item.dart';

class GenderSelectionWidget extends StatefulWidget{
  const GenderSelectionWidget({super.key});

  @override
  State<GenderSelectionWidget> createState() => _GenderSelectionWidgetState();
}

class _GenderSelectionWidgetState extends State<GenderSelectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GenderItem(
          gender: 'Male',
          isSelected: isMale ? true : false,
          icon: Icons.male,
          onPressed: (){
            if(!isMale){
              setState(() {
                isMale = !isMale;
              });
            }
          },
        ),
        GenderItem(
          gender: 'Female',
          isSelected: isMale ? false : true,
          icon: Icons.female,
          onPressed: (){
            if(isMale){
              setState(() {
                isMale = !isMale;
              });
            }
          },
        ),
      ],
    );
  }
}