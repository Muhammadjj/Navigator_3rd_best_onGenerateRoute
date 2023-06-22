// {Route<dynamic>? Function(RouteSettings)? onGenerateRoute}

import 'package:flutter/material.dart';
import 'package:navigator_1_o/Screen/Navigator_3rd_best_onGenerateRoute/Navigator_3rd_technique/Routes_files/routes_name.dart';
import 'package:navigator_1_o/Screen/Navigator_3rd_best_onGenerateRoute/Navigator_3rd_technique/first_screen.dart';
import 'package:navigator_1_o/Screen/Navigator_3rd_best_onGenerateRoute/Navigator_3rd_technique/model_class.dart';
import 'package:navigator_1_o/Screen/Navigator_3rd_best_onGenerateRoute/Navigator_3rd_technique/third_screen.dart';

import '../second_screen.dart';

class Routes {
 static  Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.homeScreen:
        return HomeScreenTransition(widget: HomePage(),curve: Curves.bounceIn);
      case RoutesName.secondScreen:
        return HomeScreenTransition(widget: SecondScreens(modelClass: settings.arguments as ModelClass,),curve: Curves.ease);
      case RoutesName.thirdScreen:
        return MaterialPageRoute(builder: (context) =>  ThirdScreen(modelClass: settings.arguments as ModelClass),);
      default:
      return MaterialPageRoute(builder: (context) {
         
        return const Scaffold(
         body:  Center(child: Text("No Page Exist .")),
        );
      },settings: settings);
    }
  }
}



 class HomeScreenTransition extends PageRouteBuilder{
  final Widget widget; 
  final Curve curve;
  HomeScreenTransition({required this.curve, required this.widget,}):super(
          transitionDuration:const Duration(milliseconds: 900),
          reverseTransitionDuration:const Duration(milliseconds: 900),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            animation = CurvedAnimation(parent: animation, curve: curve);
            return SlideTransition(
              position: animation.drive(Tween(begin:const Offset(-1.0, 0.0),end: Offset.zero)),
              child: child,);
          },
          pageBuilder: (context, animation, secondaryAnimation) =>  widget,
          );
  
 }