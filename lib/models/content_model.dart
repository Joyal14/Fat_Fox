class OnBoarding {
  final String title;
  final String image;
  final String description;

  OnBoarding({
    required this.title,
    required this.image,
    required this.description,
  });
}

List<OnBoarding> onboardingContents = [
  OnBoarding(
      title: 'Browse for your favourite\nfood',
      image: 'image/Frame.png',
      description:
          "Go through our library of food and select \n any food of your choice"),
  OnBoarding(
      title: 'Enter your address\n Get meals at your doorsteps',
      image: 'image/Frame2.png',
      description: "Tell us where you want meals to be \n delivered to"),
];
