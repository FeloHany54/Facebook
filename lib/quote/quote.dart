class Quote {
  Quote({required this.quote, required this.auther, required this.category});

  String quote;
  String auther;
  String category;

  factory Quote.fromJson(Map<String, dynamic> json) {
    return Quote(
      quote: json["quote"],
      auther: json["auther"],
      category: json["category"],
    );
  }
}
