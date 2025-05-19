import 'dart:convert';

import 'package:my_facbook/quote/quote.dart';
import 'package:http/http.dart' as http;

Future<List<Quote>> fetchQuote() async {
  final response = await http.get(
    Uri.parse("https://api.api-ninjas.com/v1/quotes"),
  );

  if (response.statusCode == 200) {
    List<dynamic> data = jsonDecode(response.body);
    return data.map((json) => Quote.fromJson(json)).toList();
  }
  throw Exception("Faild To Load Data");
}
