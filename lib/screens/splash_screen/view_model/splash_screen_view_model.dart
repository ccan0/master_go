import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../core/base/view_model/base_view_model.dart';

part 'splash_screen_view_model.g.dart';

class SplashScreenViewModel = _SplashScreenViewModelBase with _$SplashScreenViewModel;

abstract class _SplashScreenViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {}
}
