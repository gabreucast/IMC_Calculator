import 'package:flutter/cupertino.dart';

class GenderSelector extends StatefulWidget {
  const GenderSelector({super.key});

  @override
  State<GenderSelector> createState() => _GenderSelectorState();
}

class _GenderSelectorState extends State<GenderSelector> {
  String? selectedGender;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //hombre
        Column(
          children: [

          ],
        ),

        //mujer
        Column(
          children: [

          ],
        )
      ]

    );
  }
}
