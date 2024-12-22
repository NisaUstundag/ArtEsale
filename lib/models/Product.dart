import 'package:flutter/material.dart';

const String dummyText = "Bu ürün için açıklama burada yer alacak.";

class Product {
  final String? image, title, description;
  final int? price, size, id;
  final Color? color;

  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
    id: 1,
    title: "Çömlek",
    size: 12,
    price: 234,
    description: dummyText,
    image: "assets/images/coomlek.jpg",
    color: const Color(0xFFD3A984),
  ),
  Product(
    id: 2,
    title: "Gözlükler",
    size: 8,
    price: 234,
    description: dummyText,
    image: "assets/images/gözlük.jpg",
    color: const Color(0xFF4D1313),
  ),
  Product(
    id: 3,
    title: "Gramafon",
    size: 10,
    price: 234,
    description: dummyText,
    image: "assets/images/gramafon.jpg",
    color: const Color(0xFF114E17),
  ),
  Product(
    id: 4,  // Önceki id 3 yerine bu ürünün id'si 4 olmalı
    title: "Halılar",
    size: 11,
    price: 234,
    description: dummyText,
    image: "assets/images/halıjpg.jpg",
    color: const Color(0xFFA60202),
  ),
  Product(
    id: 5,
    title: "Tabaklar",
    size: 12,
    price: 234,
    description: dummyText,
    image: "assets/images/tabak.jpg",
    color: const Color(0xFF0C4691),
  ),
  Product(
    id: 6,
    title: "Minyatür",
    size: 12,
    price: 234,
    description: dummyText,
    image: "assets/images/telefon.jpg",
    color: const Color(0xFFDC0808),
  ),
  Product(
    id: 7,  // Bu ürüne de benzersiz bir id verdim
    title: "Vazolar",
    size: 11,
    price: 234,
    description: dummyText,
    image: "assets/images/vazo.jpg",
    color: const Color(0xFF088711),
  ),
];
