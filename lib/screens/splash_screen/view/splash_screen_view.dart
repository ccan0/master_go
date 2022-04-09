import 'package:flutter/material.dart';
import 'package:master_go/components/text/on_board_headline.dart';

import '../../../core/base/state/base_state.dart';
import '../../../core/base/view/base_view.dart';
import '../view_model/splash_screen_view_model.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  _SplashScreenViewState createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends BaseState<SplashScreenView> {
  SplashScreenViewModel? viewmodel;

  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(seconds: 3), () async {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Home()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return BaseView<SplashScreenViewModel>(
      viewModel: SplashScreenViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        viewmodel = model;
      },
      onPageBuilder: (BuildContext context, SplashScreenViewModel viewmodel) {
        return Scaffold(
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset(
                    'assets/images/onBoarding1.png',
                    width: dynamicWidth(238),
                    height: dynamicHeight(285),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: dynamicHeight(50)),
                    child: const OnBoardingHeadline(text: 'Master Go'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
