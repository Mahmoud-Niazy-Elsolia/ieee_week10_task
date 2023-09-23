import 'package:flutter/material.dart';
import 'package:ieee_week10/age_determination_widget.dart';
import 'package:ieee_week10/custom_button.dart';
import 'package:ieee_week10/gender_selection_widget.dart';
import 'package:ieee_week10/height_determination_widget.dart';
import 'package:ieee_week10/result_screen.dart';
import 'package:ieee_week10/weight_determination_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BMI CALCULATOR',
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Expanded(
              child: GenderSelectionWidget(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(
              child: HeightDeterminationWidget(),
            ),
            const SizedBox(
              height: 20,
            ),
            const Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  WeightDeterminationWidget(),
                  AgeDeterminationWidget(),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const ResultScreen(),
                ));
              },
              label: 'CALCULATE',
            ),
          ],
        ),
      ),
    );
  }
}
