import 'package:flutter/material.dart';

class ImageScreen extends StatelessWidget {
  const ImageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image.network("https://sailing-it-images.s3.ap-northeast-2.amazonaws.com/company/company_device.png"),
            Text("contain"),
            Container(
              color: Colors.grey,
              child: Image.asset(
                "assets/lecture_flutter_image.png",
                fit: BoxFit.contain,
                width: 150,
                height: 150,
              ),
            ),
            Text("fitheight"),
            Container(
              color: Colors.grey,
              child: Image.asset(
                "assets/lecture_flutter_image.png",
                fit: BoxFit.fitHeight,
                width: 150,
                height: 150,
                alignment: Alignment.centerLeft,
              ),
            ),
            Text("fitwidth"),
            Container(
              color: Colors.grey,
              child: Image.asset(
                "assets/lecture_flutter_image.png",
                fit: BoxFit.fitWidth,
                width: 150,
                height: 150,
        
              ),
            ),
            Text("cover"),
            Container(
              color: Colors.grey,
              child: Image.asset(
                "assets/lecture_flutter_image.png",
                fit: BoxFit.cover,
                width: 150,
                height: 150,
        
              ),
            ),
          ],
        ),
      ),
    );
  }
}
