import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_colors.dart';
import 'package:imc_calculator/core/text_styles.dart';

class ImcResultScreen extends StatelessWidget {
  final double height;
  final int weight;
  const ImcResultScreen({super.key, required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        title: Text("Resultado"),
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(160.0),
        child: Column(
          children: [
            Text("HEllo")
            //Text(weight.toString(), style: TextStyles.bodyText,),
            //Text(height.toString(), style: TextStyles.bodyText,),
          ],
        ),
      ),
    );
  }
}
