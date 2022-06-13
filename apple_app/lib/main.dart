import 'package:apple_app/custom_container.dart';
import 'package:apple_app/home_page.dart';
import 'package:flutter/material.dart';

const String imageUrl =
    'https://media.istockphoto.com/photos/woman-with-freshly-picked-apples-picture-id1255425914?b=1&k=20&m=1255425914&s=170667a&w=0&h=tUw13yWB_D9GXXkOcL014gHS9gzbDOVwK7jNvA8jPMY=';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

const String text =
    '''Apples are some of the most popular and delicious fruits on the planet. There are more than 7,500 varieties of this delicious fruit. China Fuji Apple is one of them. Fuji apples are typically round and range from large to very large, averaging 75 mm in diameter. They contain between 9–11% sugars by weight and have a dense flesh that is sweeter and crisper than many other apple cultivars, making them popular with consumers around the world. Fuji apples also have a very long shelf life compared to other apples, even without refrigeration. With refrigeration, Fuji apples can remain fresh for up to a year. Fuji apples are a variety of apple that originates in Japan. They are yellowish-green in color with red highlights. Harvested in September and October. Fuji apples are a healthy addition to most diets. They have no fat, sodium or cholesterol. A medium-sized apple weights about 154 grams and provides 80 calories. The FDA categorizes Fuji apples as a low-calorie food. Calories come from carbohydrates, proteins, fats and sugar. Any calories that your body does not use is stored as fat. A medium-sized Fuji apple also provides 170 milligrams of potassium. It offers 20 percent of the recommended daily value for vitamin C and 2 percent of the DV for vitamin A, calcium and iron, based on a 2,000-calorie diet. \n
    We believe in your satisfaction and get Gala apple from "Family Farm" with a mild and sweet pleasant flavor. Overall orange in colour It's Parentage: Golden Delicious and Kidd's Orange Red with good quality. It is one of the most favorite fruits not only in Bangladesh but also in the world. So, buy Gala apply from "Family Farm".''';
