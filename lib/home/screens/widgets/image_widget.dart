import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
   String image;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      height: 120,
      width: 200,
      fit: BoxFit.fill,
      imageUrl: image.toString(),
      placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
      errorWidget: (context, url, error) => Image.network('https://img.freepik.com/free-vector/404-error-web-template-with-funny-monster_23-2147788951.jpg?size=626&ext=jpg&ga=GA1.1.18654663.1712290619&semt=ais_user',
        height: 120,
        width: 200,
        fit: BoxFit.fill,
      ),
    );
  }

   ImageWidget({super.key,
     required this.image,
   });
}
