import 'package:coffee_card_ninja/button_styled.dart';
import 'package:coffee_card_ninja/styled_text.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int stringth = 1;
  int sugar = 1;
  void increaseStringth() {
    setState(() {
      stringth = stringth < 5 ? stringth + 1 : 1;
    });
  }

  void increaseSuga() {
    setState(() {
      sugar = sugar < 5 ? sugar + 1 : 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledText("Stringth : "),
            for (int i = 0; i < stringth; i++)
              Image.asset(
                'assets/img/coffee_bean.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(
              child: SizedBox(),
            ),
            ButtonStyled(onPressed: increaseStringth, child: const Text('+'))
          ],
        ),
        Row(
          children: [
            const StyledText("Sugars : "),
            if (sugar == 0) const StyledText('No Sugar.....'),
            for (int i = 0; i < sugar; i++)
              Image.asset(
                'assets/img/sugar_cube.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(
              child: SizedBox(),
            ),
            ButtonStyled(onPressed: increaseSuga, child: const Text('+'))
          ],
        )
      ],
    );
  }
}
