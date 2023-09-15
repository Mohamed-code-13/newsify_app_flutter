import 'package:flutter/material.dart';

import '../../helper/helper_functions.dart';

class CustomImage extends StatelessWidget {
  final String imgUrl;
  final String title;

  const CustomImage({required this.imgUrl, required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(10),
        topRight: Radius.circular(10),
      ),
      child: Hero(
        tag: title,
        child: FadeInImage(
          width: getScreenWidth(context),
          fit: BoxFit.cover,
          placeholder:
              Image.asset('assets/images/loading_image_crop.gif').image,
          image: NetworkImage(imgUrl),
          imageErrorBuilder: (context, error, stackTrace) => Image.asset(
            'assets/images/error_image.jpg',
            width: getScreenWidth(context),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
