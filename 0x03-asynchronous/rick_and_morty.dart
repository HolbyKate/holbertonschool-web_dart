import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    var url = 'https://rickandmortyapi.com/api/character';
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      var jsonResponse = jsonDecode(response.body);
      List characters = jsonResponse['results'];

      for (var character in characters) {
        print(character['name']);
      }
    } else {
      throw Exception('Failed to load characters');
    }
  } catch (err) {
    print('error caught: $err');
  }
}
