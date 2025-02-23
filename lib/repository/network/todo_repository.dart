import 'package:dartz/dartz.dart';
import 'package:rest_now_test/model/todo/todo.dart';
import 'package:rest_now_test/repository/abstract_todo_repository.dart';
import 'package:rest_now_test/service/api_service.dart';

class TodoRepository extends AbstractTodoRepository {

  final ApiService apiService;

  TodoRepository(this.apiService);

  @override
  Future<Either<String, Todo>> getTodo() async {
    return apiService.fetchTodo();
  }
  
  @override
  Future<Either<String, Todo>> getError() {
    return apiService.fetchError();
  }
}
