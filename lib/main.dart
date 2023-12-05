import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const product(),
      routes: {
        '/main': (context) => const Pay(),
      },
    );
  }
}

class button extends StatelessWidget {
  final Function()? onTap;
  const button({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.symmetric(horizontal: 100.0),
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(10)),
        child: const Center(
            child: Text(
          "Buy Now",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        )),
      ),
    );
  }
}

class Pay extends StatelessWidget {
  const Pay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          foregroundColor: Colors.white,
          title: const Text(
            'Payment method',
            style: TextStyle(
              fontSize: 20,
            ),
          )),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.fromLTRB(70, 300, 70, 300),
          decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
              ),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
            child: Image.asset('lib/images/master_card.png'),
          ),
        ),
      ),
    );
  }
}

class product extends StatelessWidget {
  const product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          'Honey Nuts',
          style: TextStyle(
            fontSize: 24,
          ),
        ),
      ),
      body: Container(
        margin: const EdgeInsets.fromLTRB(5, 30, 5, 70),
        width: 500,
        height: 700,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                  padding: const EdgeInsets.all(15),
                  child: const Text(
                    'Honey Nuts afternoon snacks',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  )),
              Container(
                child: Center(
                  child: Image.asset(
                    'lib/images/honey_nuts.png',
                    width: 250,
                    height: 250,
                  ),
                ),
              ),
              const SizedBox(height: 5),
              Container(
                child: const Text(
                  'Features :',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Container(
                child: const Column(
                  children: [
                    SizedBox(height: 15),
                    Text(
                      '* Easy and simple solution to hunger',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '* Healthy and nutricious',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '* Made with only hand picked ingredients',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '* Suitable for people of all ages',
                      style: TextStyle(fontSize: 16),
                    ),
                    SizedBox(height: 5),
                    Text(
                      '* Remains fresh for a long time',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Price : 1200 ৳ for 800gm',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 22,
                ),
              ),
              const SizedBox(height: 5),
              button(
                onTap: () => Navigator.pushNamed(context, '/main'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
