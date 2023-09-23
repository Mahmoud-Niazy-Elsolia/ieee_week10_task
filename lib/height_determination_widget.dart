import 'package:flutter/material.dart';
import 'constants.dart';
import 'data.dart';

class HeightDeterminationWidget extends StatefulWidget{
  const HeightDeterminationWidget({super.key});

  @override
  State<HeightDeterminationWidget> createState() => _HeightDeterminationWidgetState();
}

class _HeightDeterminationWidgetState extends State<HeightDeterminationWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: selectedItemColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$height',
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 60,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'cm',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ],
          ),
          Slider(
            value: height.toDouble(),
            onChanged: (newValue){
              setState(() {
                height = newValue.toInt();
              });
            },
            activeColor: Colors.pink,
            max: 200,
            min: 100,
          ),
        ],
      ),
    );
  }
}