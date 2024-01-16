import 'dart:io';

import 'package:flutter/material.dart';
import 'package:sahil_try/models/categories.dart';

Image phone = Image.asset('assets/images/pngwing.com (4).png');
Image laptop = Image.asset('assets/images/pngwing.com (5).png');
Image earphone = Image.asset('assets/images/pngwing.com (6).png');
Image poco = Image.network(
    'https://i.gadgets360cdn.com/large/poco_x4_pro_5g_yellow_colour_website_1648022330504.jpg');
Image iphone = Image.network(
    'https://cdn.tmobile.com/content/dam/t-mobile/en-p/cell-phones/apple/Apple-iPhone-12/Purple/Apple-iPhone-12-Purple-rightimage.png');
Image samusung = Image.asset('assets/images/samsung.jpg');
Image narzo = Image.network(
    'https://dailyblogline.com/wp-content/uploads/2023/07/realme_narzo_60_Pro_1688638294788_1688638319538.jpg');
Image vivo = Image.network(
    'https://images.moneycontrol.com/static-mcnews/2023/02/vivo-v27-pro-770x433.jpg?impolicy=website&width=770&height=431');
Image vivobook = Image.network(
    'https://hitechcentury.com/wp-content/uploads/2021/12/ASUS-Vivobook-Pro-16X-OLED-M7600Q-review.jpg');
Image apple = Image.network(
    'https://s.yimg.com/os/creatr-uploaded-images/2020-12/d37e0460-3eeb-11eb-b7f9-449e864b9135');
var availableCategories = [
  category(
    id: 'c1',
    color: const Color.fromARGB(212, 219, 132, 25),
    imageAddress: phone,
    title: 'Mobiles',
  ),
  category(
      id: 'c2',
      color: const Color.fromARGB(208, 16, 225, 215),
      imageAddress: laptop,
      title: 'laptops'),
  category(
      id: 'c3',
      color: const Color.fromARGB(218, 57, 227, 202),
      imageAddress: earphone,
      title: 'headphones')
];
var availableProducts = [
  product(
      id: 'c1', imageAddress: poco, price: 16000, product_name: 'POCO X4 PRO'),
  product(
      id: 'c1', imageAddress: iphone, price: 70000, product_name: 'IPHONE 12'),
  product(
      id: 'c1',
      imageAddress: samusung,
      price: 80000,
      product_name: 'SAMSUNG S23'),
  product(
      id: 'c1',
      imageAddress: narzo,
      price: 15000,
      product_name: 'Realme Narzo'),
  product(id: 'c1', imageAddress: vivo, price: 14000, product_name: 'VIVO V27'),
  product(
      id: 'c2',
      imageAddress: vivobook,
      price: 60000,
      product_name: 'Vivobook 16X'),
  product(
      id: 'c2', imageAddress: apple, price: 80000, product_name: 'MACBOOK M1')
];
