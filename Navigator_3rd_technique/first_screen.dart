import 'package:flutter/material.dart';
import 'package:navigator_1_o/Screen/Navigator_3rd_best_onGenerateRoute/Navigator_3rd_technique/Routes_files/routes_name.dart';
import 'package:navigator_1_o/Screen/Navigator_3rd_best_onGenerateRoute/Navigator_3rd_technique/model_class.dart';

import 'Routes_files/routes_method.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.amber),
      title: "Navigation Best Approach",
      initialRoute: RoutesName.homeScreen,
      onGenerateRoute: Routes.onGenerateRoute,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    String name = "Jawad",
           email = "Jawad@gmail.com";
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(name),
            const SizedBox(
              height: 30,
            ),
            Text(email),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(RoutesName.secondScreen,
                      arguments:ModelClass(email: email, name: name) );
                },
                child: const Text("Home Screen"))
          ],
        ),
      ),
    );
  }
}
