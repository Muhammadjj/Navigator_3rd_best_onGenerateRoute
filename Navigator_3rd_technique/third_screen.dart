import 'package:flutter/material.dart';
import 'package:navigator_1_o/Screen/Navigator_3rd_best_onGenerateRoute/Navigator_3rd_technique/Routes_files/routes_name.dart';
import 'package:navigator_1_o/Screen/Navigator_3rd_best_onGenerateRoute/Navigator_3rd_technique/model_class.dart';

// ignore: must_be_immutable
class ThirdScreen extends StatefulWidget {
  ModelClass modelClass;
   ThirdScreen({super.key,required this.modelClass});

  @override
  State<ThirdScreen> createState() => _HomePageState();
}

class _HomePageState extends State<ThirdScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(widget.modelClass.email),
            const SizedBox(
              height: 30,
            ),
            const SizedBox(
              height: 30,
            ),
            Text(widget.modelClass.name),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, RoutesName.homeScreen);
                },
                child: const Text("Third Screen"))
          ],
        ),
      ),
    );
  }
}
