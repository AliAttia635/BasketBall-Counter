import 'package:basketball_counter_app/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';

class CustomColumn extends StatefulWidget {
  CustomColumn({
    super.key,
    required this.teamTitle,
  });
  final String teamTitle;

  static int score = 0;
  @override
  State<CustomColumn> createState() => _CustomColumnState();
}

class _CustomColumnState extends State<CustomColumn> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          widget.teamTitle,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "${CustomColumn.score}",
          style: TextStyle(fontSize: 120),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomButton(
            text: "Add 1 Point",
            onTap: () {
              CustomColumn.score++;
              setState(() {});
            }),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
            text: "Add 2 Point",
            onTap: () {
              setState(() {
                CustomColumn.score += 2;
              });
            }),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
            text: "Add 3 Point",
            onTap: () {
              setState(() {
                CustomColumn.score += 3;
              });
            })
      ],
    );
  }
}
