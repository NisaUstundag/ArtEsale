import 'package:flutter/material.dart';

const double kDefaultPadding = 20.0; // Sabit padding (Body'de kullanıldığından burada da tanımlandı)

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriestState();
}

class _CategoriestState extends State<Categories> {
  final List<String> categories = ["Zanaat", "Antika", "Koleksiyon", "Ev"];
  int selectedIndex = 0; // İlk öğe seçili

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50, // Yükseklik artırıldı
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // Yatay liste
        itemCount: categories.length, // Liste uzunluğu belirtildi
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = index;
            });
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            margin: const EdgeInsets.symmetric(horizontal: 5),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: selectedIndex == index
                      ? Colors.black // Seçili öğe alt çizgi rengi
                      : Colors.transparent,
                  width: 2,
                ),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center, // Ortalanmış yazı
              children: [
                Text(
                  categories[index],
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: selectedIndex == index
                        ? Colors.black
                        : Colors.grey, // Seçili öğe rengi
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: kDefaultPadding / 4),
                  height: 2, // Çizgi yüksekliği
                  width: selectedIndex == index ? 30 : 0, // Seçili öğe için genişlik
                  color: Colors.black,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
