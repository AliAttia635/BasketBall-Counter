import 'package:basketball_counter_app/cubit/basektball_cubit.dart';
import 'package:basketball_counter_app/widgets/Custom_Button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CustomColumnB extends StatefulWidget {
  CustomColumnB({
    super.key,
    required this.teamTitle,
  });
  final String teamTitle;

  @override
  State<CustomColumnB> createState() => _CustomColumnBState();
}

class _CustomColumnBState extends State<CustomColumnB> {
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
              "${BlocProvider.of<BasektballCubit>(context).scoreB}",
              style: TextStyle(fontSize: 120),
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
                text: "Add 1 Point",
                onTap: () {
                  BlocProvider.of<BasektballCubit>(context).add1PointB();
                }),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                text: "Add 2 Point",
                onTap: () {
                  BlocProvider.of<BasektballCubit>(context).add2PointsB();
                }),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
                text: "Add 3 Point",
                onTap: () {
                  BlocProvider.of<BasektballCubit>(context).add3PointsB();
                })
          ],
        );
      },
    );
  }
}
