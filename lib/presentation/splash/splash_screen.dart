import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_template/barrel.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Injector.apiClient.get('/category/1').then((value) {
            print(value.data);
          });
        },
      ),
      body: Center(
        child: Text(TextManager.serviceName.tr()),
      ),
    );
  }
}
