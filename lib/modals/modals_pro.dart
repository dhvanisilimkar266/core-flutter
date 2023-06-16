class Products {
  final int id;
  final String title;
  final String description;
  final int price;
  final String thumbnail;
  bool like = false;

  Products({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.thumbnail,
  });

  factory Products.fromMap({required Map data}) {
    return Products(
      id: int.parse(data['id'].toString()),
      title: data['title'],
      description: data['description'],
      price: int.parse(data['price'].toString()),
      thumbnail: data['thumbnail'],
    );
  }
}