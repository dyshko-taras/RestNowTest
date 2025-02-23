import 'package:dartz/dartz.dart';
import 'package:rest_now_test/model/todo/todo.dart';

abstract class AbstractTodoRepository {
  Future<Either<String, Todo>> getTodo();
  Future<Either<String, Todo>> getError();
}