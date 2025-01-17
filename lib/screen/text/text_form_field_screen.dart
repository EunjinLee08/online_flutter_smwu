import 'package:flutter/material.dart';

class TextFormFieldScreen extends StatefulWidget {
  const TextFormFieldScreen({super.key});

  @override
  State<TextFormFieldScreen> createState() => _TextFormFieldScreenState();
}

class _TextFormFieldScreenState extends State<TextFormFieldScreen> {

  String textvalue = "";
  TextEditingController controller = TextEditingController();

  @override
  void initState() {
    controller.addListener(
      () {
        setState(() {

        });
      },
    );
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: Text("Text Form Field"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text(controller.text),

              Padding(
                padding: const EdgeInsets.all(12),
                child: TextFormField(
                  controller: controller,
                  /// onChanged: (value) {textvalue = value;setState(() {});},
                  keyboardType: TextInputType.text,
                  // obscureText: true,
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                  cursorColor: Colors.greenAccent,
                  cursorRadius: Radius.circular(10),
                  maxLines: 1,
                  maxLength: 20,
                  decoration: InputDecoration(
                      hintText: "글자를 입력해주세요",
                      hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 30,
                          fontWeight: FontWeight.normal),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.grey),
                          borderRadius: BorderRadius.circular(10),

                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 3, color: Colors.purple),
                        borderRadius: BorderRadius.circular(10)
                      )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
