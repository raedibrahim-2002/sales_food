// onBoarding models
class SliderObject {
  String title;
  String subTitle;
  String image;
  SliderObject(this.title, this.subTitle, this.image);
}


// have data that will go to view
class SliderViewObject{
  SliderObject sliderObject;
  int numberOfSlides;
  int currentIndex;
  SliderViewObject(this.sliderObject,this.numberOfSlides,this.currentIndex);
}
