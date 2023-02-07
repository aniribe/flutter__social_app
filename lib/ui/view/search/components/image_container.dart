import 'package:flutter/cupertino.dart';

class ImageContainer extends StatelessWidget {
  final String imagePath;
  final int index;

  const ImageContainer({
    super.key,
    required this.index,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: index == 0 ? 250 : 300,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
