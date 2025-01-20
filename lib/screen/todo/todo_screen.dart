import 'package:flutter/material.dart';
import 'package:online_lecture_smwu/screen/todo/todo_model.dart';

class TodoScreen extends StatefulWidget {
  const TodoScreen({super.key});

  @override
  State<TodoScreen> createState() => _TodoScreenState();
}

class _TodoScreenState extends State<TodoScreen> {
  final TextEditingController controller = TextEditingController();

  List<TodoModel> dataList = [
    TodoModel("산책", false),
    TodoModel("수영", false),
  ];

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  Widget item(TodoModel todoModel, int index) {
    return Row(
      children: [
        Checkbox(
          value: todoModel.complete,
          onChanged: (value) {
            todoModel.complete = value!;
          },
        ),
        Expanded(child: Text(todoModel.name)),
        IconButton(
            onPressed: () {
              dataList.removeWhere((element) => element.name == todoModel.name);
              setState(() {

              });
            },
            icon: Icon(Icons.delete)),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(title: Text("To-do")),
        body: Column(
          children: [
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: controller,
                  ),
                ),
                TextButton(
                    onPressed: () {
                      if (controller.text.isEmpty) return;
                      if (dataList.any((element) => controller.text == element.name)) return;

                      dataList.add(TodoModel(controller.text, false));
                      controller.text = "";
                      setState(() {

                      });
                    },
                    child: Text("등록"))
              ],
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return item(dataList[index], index);
                  },
                  separatorBuilder: (context, index) {
                    return Container(
                      width: double.infinity,
                      height: 1,
                      color: Colors.grey,
                    );
                  },
                  itemCount: dataList.length),
            )
          ],
        ),
      ),
    );
  }
}
