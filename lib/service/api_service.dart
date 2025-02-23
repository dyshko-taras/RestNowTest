import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:http/http.dart' as http;
import 'package:rest_now_test/constants/strings.dart';
import 'package:rest_now_test/model/todo/todo.dart';

class ApiService {
  final String baseUrl = "https://jsonplaceholder.typicode.com/";

  Future<Either<String, Todo>> fetchTodo() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/todos/1'));

      if (response.statusCode == 200) {
        return Right(Todo.fromJson(jsonDecode(response.body)));
      } else {
        return Left('${AppStrings.fetchError} ${response.statusCode}');
      }
    } catch (e) {
      return Left('${AppStrings.connectionError} $e');
    }
  }

  Future<Either<String, Todo>> fetchError() async {
    try {
      final response = await http.get(Uri.parse('$baseUrl/todos/1d'));

      if (response.statusCode == 200) {
        return Right(Todo.fromJson(jsonDecode(response.body)));
      } else {
        return Left('${AppStrings.fetchError} ${response.statusCode}');
      }
    } catch (e) {
      return Left('${AppStrings.connectionError} $e');
    }
  }
}
