import 'package:flutter/material.dart';

void main() {
  runApp(ImageLayout());
}

class ImageLayout extends StatelessWidget {
  const ImageLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("Assignment 1 (Image Layout)"),
        ),
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white54.withOpacity(0.2),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Center(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.asset(
                      "images/pexel.jpg",
                      width: 300,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  )),
                )),
            Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                      color: Colors.white54.withOpacity(0.2),
                      blurRadius: 10,
                    )
                    // blurStyle: BlurStyle.inner)
                  ]),
                  child: Center(
                      child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image.network(
                        width: 300,
                        height: 300,
                        fit: BoxFit.cover,
                        "https://th.bing.com/th/id/OIP._b4Vqu7-ituZ35EraC51aQHaIm?w=236&h=274&c=7&o=5&dpr=1.3&pid=1.20"),
                  )),
                ))
          ],
        )),
      ),
    );
  }
}
