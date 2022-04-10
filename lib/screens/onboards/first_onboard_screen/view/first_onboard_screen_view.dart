import 'package:flutter/material.dart';
import 'package:flutter_onboard/flutter_onboard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:master_go/components/buttons/add_button.dart';
import 'package:master_go/components/buttons/main_button.dart';

import '../../../../core/base/state/base_state.dart';
import '../../../../core/base/view/base_view.dart';
import '../../../../core/constants/color/color_constants.dart';
import '../view_model/first_onboard_screen_view_model.dart';

class FirstOnboardScreenView extends StatefulWidget {
  const FirstOnboardScreenView({Key? key}) : super(key: key);

  @override
  _FirstOnboardScreenViewState createState() => _FirstOnboardScreenViewState();
}

class _FirstOnboardScreenViewState extends BaseState<FirstOnboardScreenView> {
  FirstOnboardScreenViewModel? viewmodel;
  final PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return BaseView<FirstOnboardScreenViewModel>(
      viewModel: FirstOnboardScreenViewModel(),
      onModelReady: (model) {
        model.setContext(context);
        model.init();
        viewmodel = model;
      },
      onPageBuilder: (BuildContext context, FirstOnboardScreenViewModel viewmodel) {
        final List<OnBoardModel> onBoardData = [
          OnBoardModel(
            description: """We check each specialist before
he starts work""",
            imgUrl: "assets/images/onBoarding1.png",
            title: """Proven
specialist""",
            imageWidth: dynamicWidth(238),
            imageHeight: dynamicHeight(285),
          ),
          OnBoardModel(
            title: """Honest
ratings""",
            description: """We carefully check each specialist
and put honest ratings""",
            imgUrl: 'assets/images/onBoarding2.png',
            imageWidth: dynamicWidth(188),
            imageHeight: dynamicHeight(297),
          ),
          OnBoardModel(
            title: """Insured
orders""",
            description: """We insure each order for the
amount of \$500""",
            imgUrl: 'assets/images/onBoarding3.png',
            imageWidth: dynamicWidth(336),
            imageHeight: dynamicHeight(256),
          ),
          OnBoardModel(
            title: """Create
order""",
            description: "It's easy, just click on the plus",
            imgUrl: 'assets/images/onBoarding4.png',
            imageWidth: dynamicWidth(182),
            imageHeight: dynamicHeight(302),
          ),
        ];

        return Scaffold(
          body: OnBoard(
            pageController: _pageController,
            // Either Provide onSkip Callback or skipButton Widget to handle skip state
            onSkip: () {
              // print('skipped');
            },
            // Either Provide onDone Callback or nextButton Widget to handle done state
            onDone: () {
              // print('done tapped');
            },
            onBoardData: onBoardData,
            imageHeight: dynamicHeight(302),
            imageWidth: dynamicWidth(182),
            titleStyles:
                GoogleFonts.ubuntu(fontSize: 40, fontWeight: FontWeight.normal, color: ColorConstants.instance.black),
            descriptionStyles: GoogleFonts.ubuntu(
                fontSize: 16, fontWeight: FontWeight.normal, color: ColorConstants.instance.darkGrey),
            pageIndicatorStyle: PageIndicatorStyle(
              width: 100,
              inactiveColor: ColorConstants.instance.grey,
              activeColor: ColorConstants.instance.darkGrey,
              inactiveSize: const Size(8, 8),
              activeSize: const Size(17, 8),
            ),

            // Either Provide onDone Callback or nextButton Widget to handle done state
            nextButton: OnBoardConsumer(
              builder: (context, ref, child) {
                final state = ref.watch(onBoardStateProvider);
                return InkWell(
                    onTap: () => _onNextTap(state),
                    child: state.isLastPage ? AddButton(onTap: () {}) : MainButon(buttonText: 'Next', onTap: () {}));
              },
            ),
          ),
        );
      },
    );
  }

  void _onNextTap(OnBoardState onBoardState) {
    if (!onBoardState.isLastPage) {
      _pageController.animateToPage(
        onBoardState.page + 1,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeInOutSine,
      );
    } else {
      //print("nextButton pressed");
    }
  }
}
