import 'dart:math';

import 'package:flutter/material.dart';

class ToDo {
  // ToDo class 생성.
  bool isDone = false;
  String title;

  ToDo(this.title); //생성자
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ToDo App',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ToDoListPage(),
    );
  }
}

class ToDoListPage extends StatefulWidget {
  //StatefulWidget 생성, home으로 사용.
  const ToDoListPage({Key? key}) : super(key: key);

  @override
  State<ToDoListPage> createState() => _ToDoListPageState();
} // 건들지 않음.

class _ToDoListPageState extends State<ToDoListPage> {
  final _items = <ToDo>[]; // Make 'ToDo' class list
  var _todoController = TextEditingController(); // 변경 가능한 Textfield가 필요할 경우 사용.
  @override
  void dispose() {
    //TextEditingController는 더 이상 사용 의무가 없을 경우 dispose를 통해 삭제.
    _todoController.dispose();
    super.dispose();
  }

  void _addTodo(ToDo todo) {
    setState(() {
      // State object 변경이 필요한 경우 사용.
      _items.add(todo); // list에 추가.
      _todoController.text = ''; //  add 후에 textfield의 내용 비우기.
    });
  }

  void _deleteTodo(ToDo todo) {
    setState(() {
      _items.remove(todo);
    });
  }

  void _toggleTodo(ToDo todo) {
    setState(() {
      todo.isDone = !todo.isDone;
    });
  }


  Widget _buildItemWidget(ToDo todo) {
    return ListTile(
      onTap: () => _toggleTodo(todo), //Tap할 경우 가로선
      trailing: IconButton(
        // 꼬리부분
        icon: Icon(Icons.delete), // delete 아이콘 추가
        onPressed: () => _deleteTodo(todo), // 누를 경우 _deleteTodo함수
      ),
      title: Text(
        // 중간
        todo.title, // todo인스턴스의 title이 Text값
        style: todo.isDone //isDone이 true -> 가로선, false -> 없음
            ? TextStyle(
                decoration: TextDecoration.lineThrough,
                fontStyle: FontStyle.italic,
              )
            : null,
      ),
    );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      //Scaffold 위젯
      appBar: AppBar(
        title: Text('Things to do'),
      ),
      body: Container(
          padding: EdgeInsets.all(6.0),
          child: Column(
            //Container의 child = Column (하나)
            children: [
              // Column의 children Row,Expanded
              Row(
                children: [
                  //Row의 children Expanded, ElevatedButton
                  Expanded(
                    //Expanded의 child TextField
                    child: TextField(
                      //TextField만으로는 stateful하지 않음.
                      controller: _todoController,
                    ),
                  ),
                  ElevatedButton(
                      onPressed: () {
                        // 눌렀을 경우
                        // 생성자로 title Stiring datatype을 가진 클래스를 생성하여 List에 더함.
                        _addTodo(ToDo(_todoController.text));
                      },
                      style: ElevatedButton.styleFrom(primary: Colors.green),
                      child: Text(
                        'add',
                        style: TextStyle(color: Colors.white),
                      )),
                ],
              ),
              Expanded(
                child: ListView(
                  // ListView함수
                  children:
                      // todo 인자를 _buildItemWidget함수에 전달하여 _items List에 추가한다.
                      _items.map((todo) => _buildItemWidget(todo)).toList(),
                ),
              )
            ],
          )),
    );
  }
}
