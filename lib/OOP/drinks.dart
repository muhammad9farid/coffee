class Product {
  final int id;
  final String imageUrl;
  final String product_name;
  final double price;
  final int tag;
  final String discribtion;
  final double Rate;

  Product({
    required this.id,
    required this.Rate,
    required this.imageUrl,
    required this.product_name,
    required this.price,
    required this.discribtion,
    required this.tag,
  });
}

final List<Product> products = [
  Product(
      id: 1,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee1.png",
      product_name: "Espresso",
      price: 7.60,
      discribtion: "Strong",
      tag: 0),
  Product(
      id: 12,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee2.png",
      product_name: "Cappuccino",
      price: 11.40,
      discribtion: "sugary",
      tag: 0),
  Product(
      id: 123,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee3.png",
      product_name: "French Roast",
      price: 5.00,
      discribtion: "Strong",
      tag: 0),
  Product(
      id: 1234,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee4.png",
      product_name: "Latte",
      price: 3.50,
      discribtion: "Foam",
      tag: 0),
  Product(
      id: 12345,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee21.png",
      product_name: "Mocha",
      price: 7.60,
      discribtion: "Strong",
      tag: 1),
  Product(
      id: 123456,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee22.png",
      product_name: "Americano",
      price: 11.40,
      discribtion: "sugary",
      tag: 1),
  Product(
      id: 1234567,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee23.png",
      product_name: "Breve",
      price: 5.00,
      discribtion: "Strong",
      tag: 1),
  Product(
      id: 12345678,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee24.png",
      product_name: "Macchiato",
      price: 3.50,
      discribtion: "Foam",
      tag: 1),
  Product(
      id: 123456789,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee34.png",
      product_name: "Cortado",
      price: 7.60,
      discribtion: "Strong",
      tag: 2),
  Product(
      id: 2,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee31.png",
      product_name: "Flat White",
      price: 11.40,
      discribtion: "sugary",
      tag: 2),
  Product(
      id: 21,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee32.png",
      product_name: "Red Eye",
      price: 5.00,
      discribtion: "Strong",
      tag: 2),
  Product(
      id: 212,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee33.png",
      product_name: "Turkish Coffee",
      price: 3.50,
      discribtion: "Foam",
      tag: 2),
  Product(
      id: 2123,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee41.png",
      product_name: "Iced Coffee",
      price: 7.60,
      discribtion: "Strong",
      tag: 3),
  Product(
      id: 21234,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee42.png",
      product_name: "Cold Brew",
      price: 11.40,
      discribtion: "sugary",
      tag: 3),
  Product(
      id: 212345,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee43.png",
      product_name: "Espresso Con Panna",
      price: 5.00,
      discribtion: "Strong",
      tag: 3),
  Product(
      id: 2123456,
      Rate: 4.5,
      imageUrl: "assets/coffee/coffee44.png",
      product_name: "Gibraltar",
      price: 3.50,
      discribtion: "Foam",
      tag: 3),
];
