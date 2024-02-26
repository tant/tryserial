import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mydebug/data/data.dart';
import 'package:mydebug/widgets/item_card.dart';

class NewSreen2 extends StatefulWidget {
  const NewSreen2({super.key});

  @override
  State<NewSreen2> createState() => _NewScreeState();
}

class _NewScreeState extends State<NewSreen2> {
  List<ItemCard> _items = [];

  void _addItem(Item item) {
    setState(() {
      _items.add(ItemCard(
        item: Item(
            id: Random().nextInt(100) + 50,
            name: "PTFARM - CÀ RÓT 300G VIETGAP - (GÓI)",
            soluong: Random().nextDouble() * 100 + 50,
            dongia: 14500,
            thanhgtien: 14500),
      ));
    });
  }

  Future<void> _navigateAndDisplaySelection(BuildContext context) async {
    final result = await Navigator.pushNamed(context, '/qr');
    if (result != null) {
      _addItem(result as Item);
    } else {
      print("No result");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Screen 2"),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return _items[index];
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _navigateAndDisplaySelection(context);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
