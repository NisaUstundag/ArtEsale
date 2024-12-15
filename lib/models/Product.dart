import 'package:flutter/material.dart';

const String dummyText = "Bu ürün için açıklama burada yer alacak.";

class Product {
  final String? image,
      title,
      description; // 'descripton' yerine 'description' olmalı
  final int? price, size, id;
  final Color? color;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description, // Bu alan 'description' ile eşleşiyor
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Comlek",
      size: 12,
      price: 234,
      description: dummyText,
      image: "assets/images/coomlek.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 2,
      title: "Gözlükler",
      size: 8,
      price: 234,
      description: dummyText,
      image: "assets/images/gözlük.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Gramafon",
      size: 10,
      price: 234,
      description: dummyText,
      image: "assets/images/gramafon.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Halılar",
      size: 11,
      price: 234,
      description: dummyText,
      image: "assets/images/halıjpg.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 4,
      title: "Tabaklar",
      size: 12,
      price: 234,
      description: dummyText,
      image: "assets/images/tabak.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 5,
      title: "Telefonlar",
      size: 12,
      price: 234,
      description: dummyText,
      image: "assets/images/telefon.jpg",
      color: Color(0xFFD3A984)),
  Product(
      id: 6,
      title: "Vazolar",
      size: 11,
      price: 234,
      description: dummyText,
      image: "assets/images/vazo.jpg",
      color: Color(0xFFD3A984)),
];
