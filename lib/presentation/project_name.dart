import 'package:flutter/material.dart';

import '../../barrel.dart';

class ProjectName extends StatefulWidget {
  const ProjectName({super.key});

  @override
  _ProjectNameState createState() => _ProjectNameState();
}

class _ProjectNameState extends State<ProjectName> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: RouterConfiguration.router,
    );
  }
}
