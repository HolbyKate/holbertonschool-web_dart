import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    bool foundRick = false;
    bool foundAnnie = false;

    String url = 'https://rickandmortyapi.com/api/character';

    while (url != '' && !foundAnnie) {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode != 200) {
        throw Exception('Failed to load characters');
      }

      final data = jsonDecode(response.body);
      final List characters = data['results'];

      for (var character in characters) {
        String name = character['name'];

        if (name == "Rick Sanchez") {
          foundRick = true;
        }

        if (foundRick) {
          print(name);
        }

        if (name == "Annie") {
          foundAnnie = true;
          break;
        }
      }

      url = data['info']['next'] ?? '';
    }
  } catch (e) {
    print('error caught: $e');
  }
}
