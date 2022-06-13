import 'package:flutter/material.dart';

import 'custom_container.dart';
import 'main.dart';

const String placeHolder =
    'https://media.istockphoto.com/vectors/apple-logo-vector-id1070952996?b=1&k=20&m=1070952996&s=170667a&w=0&h=UPM5eYgV0Cdm9aLSTKWZtMuiWMaXBlyZnjB0Ik0Ah-g=';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildImageSection(),
                _titleSection(),
                _navigationSection(),
                _textSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Padding _textSection() {
    return Padding(
                padding: const EdgeInsets.all(16.0),
                child: const Text(
                  text,
                  textAlign: TextAlign.justify,
                ),
              );
  }

  Row _navigationSection() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        MyContainer(
          onPressed: () {
            print('Calling.......');
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.call,
                color: Colors.black,
              ),
              SizedBox(
                height: 5,
              ),
              Text('CALL')
            ],
          ),
        ),
        MyContainer(
            onPressed: () {
              print('add Cart.....');
            },
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.shopping_cart,
                  color: Colors.black,
                ),
                SizedBox(
                  height: 5,
                ),
                Text('My Cart')
              ],
            )),
        MyContainer(
          onPressed: () {
            print('Sharing....');
          },
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.share,
                color: Colors.black,
              ),
              SizedBox(
                height: 5,
              ),
              Text('SHARE')
            ],
          ),
        ),
      ],
    );
  }

  Padding _titleSection() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        onTap: () {
          print('item clicked');
        },
        tileColor: Colors.blueGrey,
        title: Text('Red Apple'),
        subtitle: Text('Price: 140 tk per KG'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [Icon(Icons.star), Text('4.8/5.00')],
        ),
        //leading: Icon(Icons.favorite),
      ),
    );
  }

  Stack _buildImageSection() {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Image.network(
          imageUrl,
          width: double.infinity,
          height: 300,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 0,
          bottom: 0,
          right: 0,
          left: 0,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Card(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)),
                  elevation: 10,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Image.network(
                      placeHolder,
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Family Farm',
                  style: TextStyle(
                    backgroundColor: Colors.white54,
                    fontSize: 25,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: -40,
          right: 10,
          child: Icon(
            Icons.favorite,
            size: 80,
            color: Colors.red,
          ),
        )
      ],
    );
  }
}
