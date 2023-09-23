import 'package:flutter/material.dart';
import 'package:ieee_week10/constants.dart';
import 'package:ieee_week10/custom_button.dart';
import 'package:ieee_week10/data.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              'Your Result',
              style: TextStyle(
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: selectedItemColor,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Result',
                      style: TextStyle(
                        color: Colors.lightGreen,
                        fontSize: 25,
                      ),
                    ),
                    const SizedBox(
                      height: 40,
                    ),
                    Text(
                      (weight/(height*height)).toStringAsFixed(4),
                      style: const TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              label: 'RE-CALCULATE',
            ),
          ],
        ),
      ),
    );
  }
}
