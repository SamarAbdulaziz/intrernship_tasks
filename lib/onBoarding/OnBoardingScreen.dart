import 'package:flutter/material.dart';
import 'package:internship_projects/Login_Register/LoginScreen.dart';
import 'package:internship_projects/onBoarding/sharedWidgets/myColors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BoardingModel {
  late String imagePath;
  late String boldTitle;
  late String subtitle;

  BoardingModel(
      {required this.imagePath,
      required this.boldTitle,
      required this.subtitle});
}

class OnBoardingScreen extends StatelessWidget {
  OnBoardingScreen({Key? key}) : super(key: key);
  PageController _pageController = PageController();
  List<BoardingModel> boardingItems = [
    BoardingModel(
      imagePath: 'assets/images/sammy-delivery.png',
      boldTitle: 'Get food delivery to your doorstep asap',
      subtitle: 'We heve young and professional delivery'
          ' team that will bring your food as soon as'
          ' possible to your doorstep',
    ),
    BoardingModel(
      imagePath: 'assets/images/sammy-done.png',
      boldTitle: 'Buy Any Food from your favorite restaurant',
      subtitle: 'We are constantly adding your favorite '
          'restaurant throughout the territory and around'
          ' your area carefully selected',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        actions: [
          Container(
            padding: const EdgeInsets.all(8.0),
            decoration: BoxDecoration(
              color: Colors.orange[100],
              //Color(0xFFfaf3e5) from the color picker but it's very pale ,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text:  TextSpan(
                    text: '7',
                    style: TextStyle(
                      fontSize: 40.0,
                      fontFamily: 'Ubuntu',
                      color: Colors.orange,
                    ),
                    children: [
                      TextSpan(
                        text: 'Krave',
                        style: TextStyle(
                          fontSize: 40.0,
                          fontFamily: 'Ubuntu',
                          color: KPrimaryColor, //Color(0xFFfaf3e5),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            //
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemBuilder: (BuildContext context, index) =>
                    onBordingItem(boardingItems[index]),
                itemCount: boardingItems.length,
              ),
            ),
            //
            SmoothPageIndicator(
              controller: _pageController,
              effect: const SlideEffect(
                spacing: 8,
                radius: 4,
                dotWidth: 24,
                dotHeight: 5,
                activeDotColor: Colors.orange,
                //Color(0xFFfaf3e5),
              ),
              count: boardingItems.length,
            ),
            const SizedBox(
              height: 15.0,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LoginScreen(),
                    ),
                  );
                },
                child: const Text('Get Started'),
                style: ElevatedButton.styleFrom(primary: KPrimaryColor),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Don\'t have an account?',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14.0),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Sign Up'),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget onBordingItem(BoardingModel item) => Column(
        children: [
          Expanded(
            child: Image.asset(item.imagePath),
          ),
          const Text(
            'Get food delivery to your doorstep asap',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Text(
            '${item.subtitle}',
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 16.0,
              color: Colors.black54,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
        ],
      );
}
/*ExpandingDotsEffect(
activeDotColor: Colors.orange,
dotWidth: 10.0,)*/
// const Text(
//   '7',
//   style: TextStyle(
//     fontSize: 40.0,
//     fontFamily: 'Ubuntu',
//     color: Colors.orange,
//   ),
// ),
// Text(
//   'Krave',
//   style: TextStyle(
//     fontSize: 40.0,
//     fontFamily: 'Ubuntu',
//     color: KPrimaryColor, //Color(0xFFfaf3e5),
//   ),
// ),