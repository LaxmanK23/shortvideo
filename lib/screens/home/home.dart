import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List a = ['gf', 'gf', 'fghngf', 'fcb', 'jhgvv'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          GridView.builder(
            physics: const ScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 4,
              mainAxisSpacing: 4,
            ),
            itemCount: a.length,
            itemBuilder: (BuildContext context, int index) {
              return ClipRRect(
                  borderRadius: BorderRadius.circular(15.0),
                  child: Image.asset('assets/images/jaya_logo.png')

                  // Image.network(
                  //   'https://storage.googleapis.com/jayacdn/images/app/thumbs/0079adc3-283d-4968-ac7b-1f4312726908_1600x1600',
                  //   fit: BoxFit.fill,
                  // ),
                  );
            },
          ),
        ],
      ),
    );
  }
}
