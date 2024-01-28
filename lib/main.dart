import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text("Đây là app bar"),
          ),
            body: const Center(child: MyWidget(true)),
        ),
      ),
      debugShowCheckedModeBanner: false,
    )
  );
}

class MyWidget extends StatefulWidget {

  final bool loading;
  const MyWidget(this.loading, {super.key});
  
  @override
  State<StatefulWidget> createState() {
    return MyWidgetState();
  }
}

class MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return widget.loading ? const CircularProgressIndicator() : const Text("NASDAQ");
  }

}