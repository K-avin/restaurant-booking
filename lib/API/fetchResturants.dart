import 'dart:convert';
import 'package:http/http.dart' as http;

Future getMoviesData(url) async {
  final response = await http.get(url, headers: {});

  if (response.statusCode == 200) {
    List responseData = jsonDecode(response.body)['results'];
    // return responseData.map((data) => new Movie.fromJson(data)).toList();
  } else {
    throw Exception('Failed to load album');
  }
}
