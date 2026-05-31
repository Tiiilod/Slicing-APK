import 'dart:convert';
import 'package:http/http.dart' as http;

Future<List> fetchProducts() async {
  final response = await http.get(
    Uri.parse('https://dummyjson.com/products'),
  );

  if (response.statusCode == 200) {
    final data = jsonDecode(response.body);

    return data['products'];
  } else {
    throw Exception('Failed to load products');
  }
}