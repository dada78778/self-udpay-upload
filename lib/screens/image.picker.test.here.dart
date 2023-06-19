import 'package:flutter/material.dart';

class ImagePickerTestHere extends StatelessWidget {
  const ImagePickerTestHere({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("image upload"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Align(child: Image.asset("assets/images/product.png")),
          Container(
            width: 200,
            child: ElevatedButton(
              onPressed: (){},
              child: Row(
                children: [
                  Icon(Icons.image,color: Colors.white,),
                  SizedBox(width: 12,),
                  Text("upload Image"),
                ],
              ),
            ),
          ),
          Text('textbutton'),
        ],
      ),
    );
  }
}

