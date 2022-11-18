import 'package:flutter/material.dart';

class Slide{
  late final String image;
  late final String title;
  late final String description;

  Slide({
    required this.image,
    required this.title,
    required this.description,
  });
}

final Slide_List=[
  Slide(image: 'assets/Walkthrough/Frame.png',
      title: 'Send Money Anywhere',
      description: 'With our unique technology, you can get money anywhere in the world.'
  ),
  Slide(image: 'assets/Walkthrough/Frame2.png',
      title: 'Safe & Secured',
      description: 'Safety of your funds is guaranteed. We’ve got you covered 24/7.'
  ),
  Slide(image: 'assets/Walkthrough/Frame3.png',
      title: 'Unbeatable Support',
      description: 'Send money to other sutraq users free of charge, with no additional fee.'
  ),
  
];