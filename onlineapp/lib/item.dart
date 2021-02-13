import 'package:flutter/material.dart';

class Item{
  int id;
  String title;
  String imageUrl;
  double price;
  int qty;

  Item(
      {
        @required this.id,
        @required this.title,
        @required this.imageUrl,
        @required this.price,
        @required this.qty});
}

List<Item> itemList = [
  Item(
      id: 1,
      title:'VGA  GIGABYTE GEFORCE RTX 3070 GAMING OC 8G - 8GB GDDR6 ',
      imageUrl:'https://www.jib.co.th/img_master/product/original/2020102813201943350_1.jpg',
      price: 29900,
      qty: 1
  ),
  Item(
      id: 2,
      title:'VGA GALAX RTX 3070 SG',
      imageUrl:'https://www.ascenti.co.th/wp-content/uploads/2020/10/Galax_3070-3.jpg',
      price: 19900,
      qty: 1
  ),
  Item(
      id: 3,
      title:'RTX3070/8GB MSI GAMING X TRIO (D6) ',
      imageUrl:'https://img.advice.co.th/images_nas/pic_product4/A0133789/A0133789OK_BIG_1.jpg',
      price: 26900,
      qty: 1
  ),
  Item(
      id: 4,
      title:'VGA MSI RTX3080 GAMING X TRIO 10GB DDR6X',
      imageUrl:'https://www.jib.co.th/img_master/product/original/2020092113265242735_1.jpg',
      price: 29020,
      qty: 1
  ),
  Item(
      id: 5,
      title:'corsair k70 rgb mk.2',
      imageUrl:'https://pisces.bbystatic.com/image2/BestBuy_US/images/products/6298/6298657cv11d.jpg',
      price: 4290,
      qty: 1
  ),
  Item(
      id: 6,
      title:'corsair k68',
      imageUrl:'https://th-live.slatic.net/v2/resize/products/S-5363-64e315d268de86b250ec490c0c332eeb.png',
      price: 2690,
      qty: 1
  ),
  Item(
      id: 7,
      title:'SSD WD BLACK SN750 500 GB ',
      imageUrl:'https://www.jib.co.th/img_master/product/original/2019031109172333227_1.jpg',
      price: 3690,
      qty: 1
  ),
  Item(
      id: 8,
      title:'mouse razer deathadder ',
      imageUrl:'https://www.jib.co.th/img_master/product/original/2018081514155230959_1.jpg',
      price: 1290,
      qty: 1
  ),
  Item(
      id: 9,
      title:'mouse razer deathadder v2',
      imageUrl:'https://mercular.s3.ap-southeast-1.amazonaws.com/images/products/2020/01/DeathAdder-V2-1.jpg',
      price: 1990,
      qty: 1
  ),
  Item(
      id: 10,
      title:' mouse razer viper mini',
      imageUrl:'https://mercular.s3.ap-southeast-1.amazonaws.com/images/products/2020/03/Razer-Viper-Mini-Ultralight-Gaming-Mouse-1.jpg',
      price: 1139,
      qty: 1
  ),

];