import 'package:flutter/material.dart';

const String imageUrl =
    'https://www.mindinventory.com/blog/wp-content/uploads/2019/10/flutter-native-1024x512.png';
void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(
                  imageUrl,
                  width: double.infinity,
                  height: 350,
                  fit: BoxFit.cover,
                ),
                Text(
                  'Batch 05',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Mobile Application Development',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  'BASIS-SEIP',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Pencilbox Training Institution',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: FlutterLogo(
                        size: 30,
                      ),
                    ),
                    const Text(
                      'Hello Flutter',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.blue,
                        letterSpacing: 1.5,
                      ),
                    ),
                    Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.blue,
                    ),
                    const Text(
                      'My Profile',
                      style: TextStyle(
                        fontSize: 25.0,
                        color: Colors.blue,
                        letterSpacing: 1.5,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: const Text(
                    text,
                    textAlign: TextAlign.justify,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ),
  ));
}

const String text =
    '''Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Urna cursus eget nunc scelerisque viverra mauris. Venenatis a condimentum vitae sapien. Vitae turpis massa sed elementum tempus. Est pellentesque elit ullamcorper dignissim cras tincidunt. Ut tristique et egestas quis ipsum suspendisse ultrices gravida. Et pharetra pharetra massa massa. Duis at consectetur lorem donec massa sapien faucibus et molestie. Blandit turpis cursus in hac habitasse platea. Porttitor leo a diam sollicitudin tempor. Ac ut consequat semper viverra nam libero justo laoreet sit. Egestas purus viverra accumsan in nisl nisi. Ipsum faucibus vitae aliquet nec ullamcorper sit. Montes nascetur ridiculus mus mauris vitae ultricies leo. Est lorem ipsum dolor sit amet consectetur adipiscing elit pellentesque. Suspendisse sed nisi lacus sed viverra. Sed arcu non odio euismod lacinia. Praesent tristique magna sit amet. Consequat nisl vel pretium lectus quam id leo in. Sit amet risus nullam eget felis eget nunc.

Feugiat in ante metus dictum at tempor commodo ullamcorper a. Scelerisque purus semper eget duis. Nulla at volutpat diam ut venenatis tellus. Habitant morbi tristique senectus et netus et malesuada fames ac. Scelerisque viverra mauris in aliquam sem fringilla. Turpis egestas pretium aenean pharetra magna ac placerat. Et malesuada fames ac turpis egestas sed tempus urna. Ultrices in iaculis nunc sed augue lacus viverra vitae. Id porta nibh venenatis cras sed felis. Diam sollicitudin tempor id eu nisl nunc mi ipsum. Odio facilisis mauris sit amet massa vitae tortor condimentum. Id semper risus in hendrerit gravida rutrum quisque non. Massa tempor nec feugiat nisl. Est pellentesque elit ullamcorper dignissim cras tincidunt. Quis risus sed vulputate odio ut. Nunc sed augue lacus viverra vitae congue eu. Interdum velit euismod in pellentesque massa. Tellus cras adipiscing enim eu turpis egestas. Sed odio morbi quis commodo.

Arcu dui vivamus arcu felis bibendum. Eu sem integer vitae justo eget magna. Nullam vehicula ipsum a arcu. Justo nec ultrices dui sapien eget. In tellus integer feugiat scelerisque varius morbi enim. At elementum eu facilisis sed odio morbi quis. Ut diam quam nulla porttitor massa. Sit amet porttitor eget dolor morbi non arcu. Quis enim lobortis scelerisque fermentum dui. Mattis vulputate enim nulla aliquet porttitor lacus luctus accumsan. Mauris in aliquam sem fringilla ut.

Nunc mattis enim ut tellus elementum sagittis vitae et. Quam lacus suspendisse faucibus interdum posuere lorem ipsum dolor sit. Tortor id aliquet lectus proin nibh nisl condimentum id venenatis. Viverra suspendisse potenti nullam ac tortor vitae purus faucibus. Auctor neque vitae tempus quam pellentesque nec nam. Neque volutpat ac tincidunt vitae semper quis lectus. Ipsum nunc aliquet bibendum enim facilisis gravida neque convallis. Amet dictum sit amet justo donec enim diam vulputate ut. Ipsum faucibus vitae aliquet nec ullamcorper sit amet risus nullam. Sed blandit libero volutpat sed cras ornare arcu dui. Facilisi nullam vehicula ipsum a arcu cursus vitae.

Tortor condimentum lacinia quis vel eros donec ac. In vitae turpis massa sed elementum tempus egestas. Id aliquet lectus proin nibh nisl condimentum. Placerat vestibulum lectus mauris ultrices. Adipiscing diam donec adipiscing tristique risus nec. Pulvinar elementum integer enim neque volutpat. Faucibus nisl tincidunt eget nullam non. Purus gravida quis blandit turpis cursus in hac habitasse platea. Morbi tristique senectus et netus et malesuada. Enim ut tellus elementum sagittis vitae. Mi quis hendrerit dolor magna eget. Odio aenean sed adipiscing diam donec adipiscing tristique risus.''';
