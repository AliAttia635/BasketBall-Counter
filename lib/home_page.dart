import 'package:basketball_counter_app/widgets/Custom_Button.dart';
import 'package:basketball_counter_app/widgets/custom_column.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
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
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 4),
                child: CustomColumn(
                  teamTitle: "Team A",
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
                padding:
                    const EdgeInsets.symmetric(vertical: 16.0, horizontal: 4),
                child: CustomColumn(
                  teamTitle: "Team B",
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
              CustomColumn.score = 0;
              setState(() {});
            },
          )
        ],
      ),
    );
  }
}
