import 'package:flutter/cupertino.dart';
import 'package:imc_calculator/components/gender_selector.dart';

import '../components/height_selector.dart';
import '../components/number_selector.dart';

class ImcHomeScreen extends StatefulWidget {
  const ImcHomeScreen({super.key});

  @override
  State<ImcHomeScreen> createState() => _ImcHomeScreen();
}

class _ImcHomeScreen extends State<ImcHomeScreen> {
  int selectedAge = 20;
  int selectedWeight = 80;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GenderSelector(),
        HeightSelector(),
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
              Expanded(child: NumberSelector(
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
              )),
            ],
          ),
        ),
      ],
    );
  }
}
