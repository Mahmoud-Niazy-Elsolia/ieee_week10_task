import 'package:flutter/material.dart';
import 'constants.dart';

class GenderItem extends StatelessWidget {
  final bool isSelected ;
  final String gender ;
  final IconData icon ;
  final void Function()? onPressed;

   const GenderItem({
    super.key,
    required this.isSelected ,
     required this.gender,
     required this.icon,
     required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        // height: 200,
        width: MediaQuery.of(context).size.width *.43,
        decoration: BoxDecoration(
          color: isSelected? selectedItemColor : unSelectedItemColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              size: 80,
              color: Colors.white,
            ),
            Text(
              gender,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 20,
              ),
            )
          ],
        ),
      ),
    );
  }
}
