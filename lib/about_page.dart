import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("About Page"),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        children: <Widget>[
          Container(
            height: 250,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Image(image: AssetImage("images/login.png")),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Center(
              child: Text(
                'About Us',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text('Tentang Aplikasi', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.only(top :1, left: 15, right:15, bottom: 15),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean pharetra et est vel vulputate. Sed congue luctus felis nec molestie. Donec consectetur est sagittis lacus tincidunt, vitae malesuada est finibus. Nulla pretium neque eu lectus finibus mollis. Mauris sem mauris, commodo et risus quis, porta luctus orci. Quisque quis mattis eros, in rutrum ex. Etiam euismod varius metus, id posuere ex porta eget. ', style: TextStyle(fontSize: 16,)),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text('FAQ', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.only(top :1, left: 15, right:15, bottom: 15),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean pharetra et est vel vulputate. Sed congue luctus felis nec molestie. Donec consectetur est sagittis lacus tincidunt, vitae malesuada est finibus. Nulla pretium neque eu lectus finibus mollis. Mauris sem mauris, commodo et risus quis, porta luctus orci. Quisque quis mattis eros, in rutrum ex. Etiam euismod varius metus, id posuere ex porta eget. ', style: TextStyle(fontSize: 16,)),
          ),
          Container(
            padding: EdgeInsets.all(15),
            child: Text('Kontak Dukungan', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          ),
          Container(
            padding: EdgeInsets.only(top :1, left: 15, right:15, bottom: 15),
            child: Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean pharetra et est vel vulputate. Sed congue luctus felis nec molestie. Donec consectetur est sagittis lacus tincidunt, vitae malesuada est finibus. Nulla pretium neque eu lectus finibus mollis. Mauris sem mauris, commodo et risus quis, porta luctus orci. Quisque quis mattis eros, in rutrum ex. Etiam euismod varius metus, id posuere ex porta eget. ', style: TextStyle(fontSize: 16,)),
          ),
        ],
      ),
    );
  }
}
