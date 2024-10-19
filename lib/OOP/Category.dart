class category {
  final String name;
  final int tag;

  category({
    required this.name,
    required this.tag,
  });
}

final List<category> Categories = [
  category(name: "All Coffee", tag: 0),
  category(name: "Machiato", tag: 0),
  category(name: "Latte", tag: 0),
  category(name: "Amiricano", tag: 0),
];
