import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  List randomImg = [
    "assets/images/avatar1.png",
    "assets/images/avatar2.webp",
    "assets/images/avatar3.png",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 6,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/images/image4.jpeg"),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'CipherSchools',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Icon(
              Icons.menu,
              color: Colors.black,
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Welcome to ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'the',
                  style: TextStyle(
                    color: Colors.yellow.shade900,
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Future ',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                    color: Colors.yellow.shade900,
                  ),
                ),
                Text(
                  'of Learning',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 30,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text(
              'Start Learning by best creator for',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            AnimatedTextKit(
              animatedTexts: [
                TypewriterAnimatedText(
                  'absolutely free',
                  textStyle: TextStyle(
                    fontSize: 18,
                    color: Colors.yellow.shade900,
                  ),
                  speed: const Duration(milliseconds: 200),
                ),
              ],
              totalRepeatCount: 10,
              pause: const Duration(milliseconds: 1000),
              displayFullTextOnTap: true,
              stopPauseOnTap: true,
            ),
            SizedBox(
              height: 25,
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  for (int i = 0; i < 3; i++)
                    Align(
                      widthFactor: 0.6,
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          randomImg[i],
                        ),
                      ),
                    ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        '50+',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Text(
                        "Mentors",
                        style: TextStyle(color: Colors.grey),
                      ),
                    ],
                  ),
                  VerticalDivider(
                    thickness: 2,
                    color: Colors.grey,
                    width: 20,
                  ),
                  Column(
                    children: [
                      Text(
                        '4.8/5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade900,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade900,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade900,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade900,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow.shade900,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            'Ratings',
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                primary: Colors.yellow.shade900,
                minimumSize: Size(180, 45),
              ),
              onPressed: () {},
              icon: Text(
                'Start Learning Now',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              label: Icon(Icons.arrow_right_alt_rounded),
            ),
            SizedBox(
              height: 25,
            ),
            Container(
              height: 140,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.yellow.shade900,
              ),
              child: PageView(
                children: [
                  ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "assets/images/image1.png",
                        fit: BoxFit.cover,
                      )),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/image2.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      "assets/images/image3.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
