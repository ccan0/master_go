import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../../../../core/base/view_model/base_view_model.dart';

part 'first_onboard_screen_view_model.g.dart';

class FirstOnboardScreenViewModel = FirstOnboardScreenViewModelBase with _$FirstOnboardScreenViewModel;

abstract class FirstOnboardScreenViewModelBase with Store, BaseViewModel {
  @override
  void setContext(BuildContext context) => this.context = context;

  @override
  void init() {}
}
