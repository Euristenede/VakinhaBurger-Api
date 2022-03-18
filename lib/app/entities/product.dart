import 'dart:convert';

class Product {
  final int id;
  final String name;
  final String description;
  final double price;
  final String image;
  final int categoria;

  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.image,
    required this.categoria,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'price': price,
      'image': image,
      'categoria': categoria,
    };
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      description: map['description'] ?? '',
      price: map['price']?.toDouble() ?? 0.0,
      image: map['image'] ?? '',
      categoria: map['categoria'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));
}
