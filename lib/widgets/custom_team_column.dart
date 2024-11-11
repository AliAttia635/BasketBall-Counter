import 'package:basketball_counter_app/cubit/basektball_cubit.dart';
import 'package:basketball_counter_app/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomTeamColumn extends StatelessWidget {
  CustomTeamColumn({
    super.key,
    required this.teamTitle,
    required this.score,
    required this.onAdd1Point,
    required this.onAdd2Points,
    required this.onAdd3Points,
  });
  final String teamTitle;
  final int score;
  final VoidCallback onAdd1Point;
  final VoidCallback onAdd2Points;
  final VoidCallback onAdd3Points;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          teamTitle,
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "$score",
          style: TextStyle(fontSize: 120),
        ),
        const SizedBox(
          height: 10,
        ),
        CustomButton(
          text: "Add 1 Point",
          onTap: onAdd1Point,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
          text: "Add 2 Point",
          onTap: onAdd2Points,
        ),
        const SizedBox(
          height: 20,
        ),
        CustomButton(
          text: "Add 3 Point",
          onTap: onAdd3Points,
        )
      ],
    );
  }
}
