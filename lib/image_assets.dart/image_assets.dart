import 'package:flutter/material.dart';

class AppImages {
  static String get image1 => "lib/images/logo_busca_cep.png";
}


class ImageAssetsPage extends StatefulWidget {
  const ImageAssetsPage({super.key});

  @override
  State<ImageAssetsPage> createState() => _ImageAssetsPageState();
}

class _ImageAssetsPageState extends State<ImageAssetsPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(AppImages.image1, height: 50,),
      ],
    );
  }
}