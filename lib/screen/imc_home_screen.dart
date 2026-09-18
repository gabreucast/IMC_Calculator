import 'package:flutter/material.dart';
import 'package:imc_calculator/components/gender_selector.dart';

import '../components/height_selector.dart';
import '../components/number_selector.dart';
import '../core/app_colors.dart';
import '../core/text_styles.dart';
import 'imc_result_screen.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreen();
}

class _ImcHomeScreen extends State<ImcHomeScreen> {
  int selectedAge = 20;
  int selectedWeight = 80;
  double selectHeight = 160;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(
          selectHeight: selectHeight,
          onHeightChange: (newHeight) {
            setState(() {
              selectHeight = newHeight;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: NumberSelector(
                  title: "peso",
                  value: selectedWeight,
                  onDecrement: () {
                    setState(() {
                      selectedWeight--;
                    });
                  },
                  onIncrement: () {
                    setState(() {
                      selectedWeight++;
                    });
                  },
                ),
              ),
              SizedBox(width: 16),
              Expanded(
                child: NumberSelector(
                  title: "altura",
                  value: selectedAge,
                  onDecrement: () {
                    setState(() {
                      selectedAge--;
                    });
                  },
                  onIncrement: () {
                    setState(() {
                      selectedAge++;
                    });
                  },
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(
            top: 16,
            bottom: 4,
            right: 16,
            left: 16,
          ),
          child: SizedBox(
            height: 60,
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ImcResultScreen(
                    height: selectHeight,
                    weight: selectedWeight,
                  )),
                );
              },
              style: ButtonStyle(
                shape: WidgetStatePropertyAll(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                backgroundColor: WidgetStateProperty.all(AppColors.primary),
              ),
              child: Text("Calcular", style: TextStyles.bodyText),
            ),
          ),
        ),
      ],
    );
  }
}
