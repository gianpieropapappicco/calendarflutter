import 'package:calendar/models/todo_model.dart';
import 'package:meta/meta.dart';

@immutable
abstract class TodoListEvent {
  final Todo todo;

  TodoListEvent({this.todo});
}

class GetTodos extends TodoListEvent {
  GetTodos() : super();
}

class DeleteTodo extends TodoListEvent {
  DeleteTodo({@required Todo todo}) : super(todo: todo);
}
class AddTodo extends TodoListEvent {
  AddTodo({@required Todo todo}) : super(todo: todo);
}
class UpdateTodo extends TodoListEvent {
  UpdateTodo({@required Todo todo}) : super(todo: todo);
}
class ReorderTodo extends TodoListEvent {
    final List<Todo> todos;
    final int oldIndex;
    final int newIndex;
  ReorderTodo({@required this.todos,@required this.oldIndex,@required this.newIndex}) ;
}