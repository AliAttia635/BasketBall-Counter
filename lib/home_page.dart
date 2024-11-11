import 'package:basketball_counter_app/cubit/basektball_cubit.dart';
import 'package:basketball_counter_app/widgets/Custom_Button.dart';
import 'package:basketball_counter_app/widgets/custom_team_column.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BasektballCubit, BasektballState>(
      builder: (context, state) {
        BasektballCubit myCubit = BlocProvider.of<BasektballCubit>(context);
        return Scaffold(
          appBar: AppBar(
            title: Text(
              "Points Counter",
              style: TextStyle(color: Colors.white),
            ),
            backgroundColor: Colors.orange,
          ),
          body: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 4),
                    child: CustomTeamColumn(
                      teamTitle: "Team A",
                      score: myCubit.scoreA,
                      onAdd1Point: myCubit.add1PointA,
                      onAdd2Points: myCubit.add2PointsA,
                      onAdd3Points: myCubit.add3PointsA,
                    ),
                  ),
                  const SizedBox(
                    height: 400,
                    child: VerticalDivider(
                      color: Colors.grey,
                      width: 20,
                      thickness: 2,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 16.0, horizontal: 4),
                    child: CustomTeamColumn(
                      teamTitle: "Team B",
                      score: myCubit.scoreB,
                      onAdd1Point: myCubit.add1PointB,
                      onAdd2Points: myCubit.add2PointsB,
                      onAdd3Points: myCubit.add3PointsB,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                text: "Reset",
                onTap: () {
                  myCubit.resetPoints();
                },
              )
            ],
          ),
        );
      },
    );
  }
}
