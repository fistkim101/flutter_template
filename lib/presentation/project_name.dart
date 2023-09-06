import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../barrel.dart';

class ProjectName extends StatefulWidget {
  const ProjectName({super.key});

  @override
  _ProjectNameState createState() => _ProjectNameState();
}

class _ProjectNameState extends State<ProjectName> with WidgetsBindingObserver {
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) async {
    super.didChangeAppLifecycleState(state);
    if (state == AppLifecycleState.resumed) {
      // background to foreground 된 상태
    }
  }

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
      child: MaterialApp.router(
        localizationsDelegates: context.localizationDelegates,
        supportedLocales: context.supportedLocales,
        locale: context.locale,
        debugShowCheckedModeBanner: false,
        routerConfig: RouterConfiguration.router,
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
