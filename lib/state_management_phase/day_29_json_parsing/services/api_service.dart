import 'dart:convert';

import 'package:zero_to_hero_mobile_dev/state_management_phase/day_29_json_parsing/models/user.dart';
import 'package:http/http.dart' as http;

class ApiService {
  Future<List<User>> fetchUsers() async {
    List<User> users = [];
    try {
      final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/users'),
      );
      // throw Exception();
      if (response.statusCode == 200) {
        final List usersData = jsonDecode(response.body);
        users = usersData.map((user) => User.fromJson(user)).toList();
      }
    } catch (e) {
      rethrow;
    }
    return users;
  }
}
