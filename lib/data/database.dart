import 'package:hive/hive.dart';
import 'package:hive/hive.dart';

class ToDoDataBase{
  List toDoList = [];
  // reference our box

  final _myBox = Hive.box('mybox');

  //run this method if first time opening the app
  void createInitialData(){
    toDoList =[
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  // load data from the database
  void loadData(){
      toDoList = _myBox.get("TODOLIST");
  }
  // update the database
  void updateDataBase(){
      _myBox.put("TODOLIST", toDoList);
  }
}