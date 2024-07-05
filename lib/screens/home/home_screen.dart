import 'package:flutter/material.dart';
import 'package:travel_app_ui/components/app_bar.dart';
import 'package:travel_app_ui/components/custom_bottom_nav_bar.dart';
import 'package:travel_app_ui/screens/home/components/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(context, isTransparent: true),
      body: Body(),
      bottomNavigationBar: const CustomBottonNavBar(),
    );
  }
}
