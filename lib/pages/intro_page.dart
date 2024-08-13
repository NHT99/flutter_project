import 'package:flutter/material.dart';
import 'package:sneaker_shop/pages/home_page.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(25),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                  padding: const EdgeInsets.all(25),
                  child: Image.asset(
                    "lib/images/nike.png",
                    height: 240,
                  )),

              const SizedBox(
                height: 48,
              ),
              //header
              const Text('Just Do It',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

              //title
              const SizedBox(
                height: 24,
              ),
              Text(
                'Brand new sneakers and custom kicks made with premium quality',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
                textAlign: TextAlign.center,
              ),

              //button
              const SizedBox(
                height: 48,
              ),

              GestureDetector(
                onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage())),
                child: Container(
                  decoration: BoxDecoration(color: Colors.grey[900], borderRadius: BorderRadius.circular(20)),
                  padding: const EdgeInsets.all(25),
                  child: const Center(
                      child: Text(
                    'Shop Now',
                    style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
