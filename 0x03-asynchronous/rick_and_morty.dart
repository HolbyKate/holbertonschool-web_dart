import 'dart:convert';
import 'package:http/http.dart' as http;

Future<void> printRmCharacters() async {
  try {
    // Base URL for the rick_and_morty API
    final baseUrl = 'https://rickandmortyapi.com/api/character';
    List<String> allCharacters = [];
    String? nextPage = baseUrl;

    // Fetch all pages of characters
    while (nextPage != null) {
      final response = await http.get(Uri.parse(nextPage));

      if (response.statusCode != 200) {
        throw Exception('Failed to fetch characters');
      }

      final data = json.decode(response.body);
      final characters = data['results'] as List;

      // Extract character names from current page
      for (var character in characters) {
        allCharacters.add(character['name'] as String);
      }

      // Check if there's a next page
      nextPage = data['info']['next'] as String?;
    }

    // Print all character names
    for (var name in allCharacters) {
      print(name);
    }
  } catch (e) {
    print('error caught: $e');
  }
}