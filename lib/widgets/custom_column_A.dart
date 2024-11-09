import 'package:basketball_counter_app/cubit/basektball_cubit.dart';
import 'package:basketball_counter_app/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomColumnA extends StatefulWidget {
  CustomColumnA({
    super.key,
    required this.teamTitle,
  });
  final String teamTitle;

  @override
  State<CustomColumnA> createState() => _CustomColumnAState();
}

class _CustomColumnAState extends State<CustomColumnA> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BasektballCubit, BasektballState>(
      builder: (context, state) {
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
              "${BlocProvider.of<BasektballCubit>(context).scoreA}",
              style: TextStyle(fontSize: 120),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
                text: "Add 1 Point",
                onTap: () {
                  BlocProvider.of<BasektballCubit>(context).add1PointA();
                }),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                text: "Add 2 Point",
                onTap: () {
                  BlocProvider.of<BasektballCubit>(context).add2PointsA();
                }),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                text: "Add 3 Point",
                onTap: () {
                  BlocProvider.of<BasektballCubit>(context).add3PointsA();
                })
          ],
        );
      },
    );
  }
}
