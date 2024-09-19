import 'dart:async';

import 'package:sales_mvvm/domain/model.dart';
import 'package:sales_mvvm/presentation/base/baseViewModel.dart';
import 'package:sales_mvvm/presentation/resources/assets_manager.dart';
import 'package:sales_mvvm/presentation/resources/strings_manager.dart';

class OnBoardingViewModel extends BaseViewModel
    implements OnBoardingViewModelInputs, OnBoardingViewModelOutputs {
      
  // stream controllers outputs
  final StreamController _streamController =
      StreamController<SliderViewObject>();
  late final List<SliderObject> _list;
  int _currentIndex = 0;

  // onboarding viewModel inputs
  @override
  void dispose() {
    _streamController.close();
  }

  @override
  void start() {
    // viewModel start your jop
    _list = _getSliderData();
    _postDataToView();
  }

  @override
  int goNext() {

    int nextIndex = ++_currentIndex;
    if (nextIndex == _list.length) {
      nextIndex = 0;
    }
    return nextIndex;
  }

  @override
  int goPrevious() {
        int previousIndex = --_currentIndex;
    if (previousIndex == -1) {
      previousIndex = _list.length - 1;
    }
    return previousIndex;
  }

  @override
  void onPageChange(int index) {
    _currentIndex = index;
    _postDataToView();
  }

  @override
  Sink get inputSliderViewObject => _streamController.sink;

  // onboarding viewModel outputs
  @override
  Stream<SliderViewObject> get outputSliderViewObject =>
      _streamController.stream.map((SliderViewObject) => SliderViewObject);

  // onBoarding private functions

  void _postDataToView() {
    inputSliderViewObject.add(
        SliderViewObject(_list[_currentIndex], _list.length, _currentIndex));
  }

  List<SliderObject> _getSliderData() => [
        SliderObject(
          AppStrings.onBoardingTitle1,
          AppStrings.onBoardingSUBTitle1,
          ImageAssets.onboardingLogo1,
        ),
        SliderObject(
          AppStrings.onBoardingTitle2,
          AppStrings.onBoardingSUBTitle2,
          ImageAssets.onboardingLogo2,
        ),
        SliderObject(
          AppStrings.onBoardingTitle3,
          AppStrings.onBoardingSUBTitle3,
          ImageAssets.onboardingLogo3,
        ),
        SliderObject(
          AppStrings.onBoardingTitle4,
          AppStrings.onBoardingSUBTitle4,
          ImageAssets.onboardingLogo4,
        ),
      ];
}

// inputs mean that orders that our view model will receive from view
abstract class OnBoardingViewModelInputs {
  int goNext(); // when user clicks on right arrow or swap left
  int goPrevious(); // when user clicks on right arrow or swap left
  void onPageChange(int index);

  // stream controller input
  // هنعمله get علشان يتعمله override
  Sink get inputSliderViewObject;
}

abstract class OnBoardingViewModelOutputs {
  // onboarding viewModel outputs
  Stream<SliderViewObject> get outputSliderViewObject;
}
