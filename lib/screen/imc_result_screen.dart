import 'package:flutter/cupertino.dart';
import 'package:imc_calculator/core/text_styles.dart';

class ImcResultScreen extends StatelessWidget {
  final double height;
  final int weight;
  const ImcResultScreen({super.key, required this.height, required this.weight});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Text(weight.toString(), style: TextStyles.bodyText,),
        Text(height.toString(), style: TextStyles.bodyText,),
        Spacer()
      ],
    );
  }
}
