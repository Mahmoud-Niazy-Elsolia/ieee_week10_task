import 'package:flutter/material.dart';

import 'constants.dart';
import 'data.dart';

class WeightDeterminationWidget extends StatefulWidget {

   const WeightDeterminationWidget({
    super.key,
  });

  @override
  State<WeightDeterminationWidget> createState() => _WeightDeterminationWidgetState();
}

class _WeightDeterminationWidgetState extends State<WeightDeterminationWidget> {

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .43,
      decoration: BoxDecoration(
        color: selectedItemColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'WEIGHT',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 20,
            ),
          ),
          Text(
            '$weight',
            style: const TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CircleAvatar(
                radius: 25,
                backgroundColor: buttonColor,
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      weight++;
                    });
                  },
                  icon: const Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
              CircleAvatar(
                radius: 25,
                backgroundColor: buttonColor,
                child: IconButton(
                  onPressed: (){
                    setState(() {
                      weight--;
                    });
                  },
                  icon: const Icon(
                    Icons.remove,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
