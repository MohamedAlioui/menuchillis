class MenuItem {
  final String name;
  final String description;
  final double price;
  final String? imageUrl;

  MenuItem({
    required this.name,
    required this.description,
    required this.price,
    this.imageUrl,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      name: json['name'] ?? 'Unknown', // Default value if null
      description: json['description'] ?? 'No description available', // Default value if null
      price: (json['price'] as num?)?.toDouble() ?? 0.0, // Safe conversion to double, defaults to 0.0 if null
      imageUrl: json['imageUrl'], // This can stay nullable
    );
  }
}
