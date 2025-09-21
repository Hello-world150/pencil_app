import 'package:http/http.dart' as http;
import 'dart:convert';

const String apiRandomHitokotoUrl = 'https://www.qhl.codes/hitokoto/';

// the class of hitokoto
class Hitokoto {
  // the hitokoto id
  final int id;

  // the title of the hitokoto
  String? title;

  // the content of the hitokoto
  String content;

  // the user of the hitokoto
  final String from;

  // the character of the hitokoto
  String? fromWho;

  // the user id of the hitokoto
  final int userId;

  // the creation time of the hitokoto
  final int createdAt;

  Hitokoto({
    required this.id,
    required this.content,
    required this.from,
    required this.fromWho,
    required this.userId,
    required this.createdAt,
  });

  factory Hitokoto.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'id': int id,
        'content': String content,
        'from': String from,
        'from_who': String? fromWho,
        'user_id': int userId,
        'created_at': int createdAt,
      } =>
        Hitokoto(
          id: id,
          content: content,
          from: from,
          fromWho: fromWho,
          userId: userId,
          createdAt: createdAt,
        ),
      _ => throw Exception('Failed to parse hitokoto.'),
    };
  }
}

Future<Hitokoto> fetchHitokoto() async {
  final response = await http.get(Uri.parse(apiRandomHitokotoUrl));

  if (response.statusCode == 200) {
    // if the server returns a 200 OK response, parse the JSON
    return Hitokoto.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // if the server returns an error, throw an exception
    throw Exception('Failed to load hitokoto.');
  }
}
