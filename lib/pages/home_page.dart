import 'package:flutter/material.dart';
import '../service/service_method.dart';

class HomePage extends StatefulWidget {
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String homePageContent = 'Getting data';

  @override
  void initState() {
    getHomePageContent().then((val) {
      setState(() {
        homePageContent = val.toString();
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('People Life+')),
      body: SingleChildScrollView(
        child: Text(homePageContent),
      ),
    );
  }
}
