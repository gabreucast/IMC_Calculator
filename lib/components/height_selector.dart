import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class HeightSelector extends StatefulWidget {
  final double selectHeight;
  final Function(double) onHeightChange;

  const HeightSelector({
    super.key,
    required this.selectHeight,
    required this.onHeightChange,
  });

  @override
  State<HeightSelector> createState() => _HeightSelectorState();
}

class _HeightSelectorState extends State<HeightSelector> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.backgroundComponent,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text("ALTURA", style: TextStyles.bodyText),
            ),
            Text(
              "${widget.selectHeight.toStringAsFixed(0)} cm",
              style: TextStyle(
                color: Colors.white,
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            Slider(
              value: widget.selectHeight,
              onChanged: (newHeight) {
                widget.onHeightChange(newHeight);
              },
              min: 50,
              max: 220,
              divisions: 70,
              label: "${widget.selectHeight.toStringAsFixed(0)} cm",
              activeColor: AppColors.primary,
              thumbColor: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}
