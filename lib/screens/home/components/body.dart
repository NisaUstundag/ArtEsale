import 'package:flutter/material.dart';
import 'package:E_TICARET/models/Product.dart';  // Product modelini dahil ettik
import 'package:E_TICARET/screens/home/components/catagories.dart';  // Categories widget'ı import edildi

const double kDefaultPadding = 20.0; // Tanımlanmış sabit padding

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Kategoriler",
            style: Theme.of(context)
                .textTheme
                .headlineMedium
                ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),  // Categories widget'ı
        // Ürünlerin Listelendiği Bölüm
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(kDefaultPadding),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,  // 2 sütunlu grid düzeni
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              childAspectRatio: 0.75, // Her bir öğenin boyutu
            ),
            itemCount: products.length,  // Ürünlerin sayısı kadar öğe
            itemBuilder: (context, index) {
              final product = products[index];  // Her bir ürünü alıyoruz
              return Card(
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset(
                        product.image ?? 'assets/images/placeholder.jpg',
                        fit: BoxFit.cover,
                        height: 120,
                        width: double.infinity,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        product.title ?? "Başlık Bulunamadı",  // Ürün başlığı
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      "\$${product.price}",  // Ürün fiyatı
                      style: TextStyle(fontSize: 16, color: Colors.green),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
