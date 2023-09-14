import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../barrel.dart';

class AppVersionCheckScreen extends StatelessWidget {
  const AppVersionCheckScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        backgroundColor: ColorManager.white,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: ValueManager.screenHeight(context) * 0.1),
            _buildMainImage(context),
            const SizedBox(height: ValueManager.s20),
            _buildTitle(context),
            const SizedBox(height: ValueManager.s20),
            _buildDescription(context),
            Expanded(child: Container()),
            _buildButton(context),
            const SizedBox(height: ValueManager.s30),
          ],
        ),
      ),
    );
  }

  _buildMainImage(BuildContext context) {
    return Center(
      child: SizedBox(
        height: ValueManager.screenHeight(context) * 0.4,
        width: double.infinity,
        child: Lottie.asset(AssetManager.appVersion),
      ),
    );
  }

  _buildTitle(BuildContext context) {
    return Text(
      TextManager.appVersionUpdateTitle.tr(),
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }

  _buildDescription(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: ValueManager.s20,
      ),
      child: Text(
        TextManager.appVersionUpdateDescription.tr(),
        textAlign: TextAlign.center,
        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
              color: ColorManager.blueGrey500,
              fontWeight: FontWeight.w500,
              height: 1.8,
            ),
      ),
    );
  }

  Widget _buildButton(
    BuildContext context,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: ValueManager.s15,
      ),
      child: InkWell(
        highlightColor: Colors.transparent,
        splashColor: Colors.transparent,
        onTap: () async {
          await AppVersionManager.launchURL();
        },
        child: Container(
          width: double.infinity,
          height: ValueManager.s48,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(ValueManager.s15),
            color: Theme.of(context).primaryColor,
          ),
          child: Center(
            child: Text(
              TextManager.confirm.tr(),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: ColorManager.white,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
        ),
      ),
    );
  }
}
