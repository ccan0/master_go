import 'package:flutter/material.dart';

//Viewmodellerimize kullandigimiz sayfanin contextini veriyoruz.
abstract class BaseViewModel {
  BuildContext? context;

  void setContext(BuildContext context);
  void init();
}
