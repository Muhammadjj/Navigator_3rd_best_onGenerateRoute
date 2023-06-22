import 'package:flutter/material.dart';
import 'package:navigator_1_o/Screen/Navigator_3rd_best_onGenerateRoute/Navigator_3rd_technique/Routes_files/routes_name.dart';
import 'model_class.dart';

// ignore: must_be_immutable
class SecondScreens extends StatefulWidget {
  ModelClass modelClass;
  SecondScreens({super.key, required this.modelClass});

  @override
  State<SecondScreens> createState() => _HomePageState();
}

class _HomePageState extends State<SecondScreens> {
  String name = "hamad";
  String email = "hamad@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(widget.modelClass.email),
            const SizedBox(
              height: 30,
            ),
            Text(widget.modelClass.name),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    RoutesName.thirdScreen,
                    arguments: ModelClass(email: email, name: name),
                  );
                },
                child: const Text("Second Screen"))
          ],
        ),
      ),
    );
  }
}
