import 'package:flutter/material.dart';
import 'package:mydebug/data/data.dart';
import 'package:mydebug/widgets/item_card.dart';

class NewScree extends StatefulWidget {
  const NewScree({super.key});

  @override
  State<NewScree> createState() => _NewScreeState();
}

class _NewScreeState extends State<NewScree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Test Screen"),
      ),
      body: Center(
        child: Column(
          children: [
            ItemCard(
              item: Item(
                  id: 1,
                  name: "PTFARM - CÀ RÓT 300G VIETGAP - (GÓI)",
                  soluong: 1,
                  dongia: 14500,
                  thanhgtien: 14500),
            ),
            ItemCard(
              item: Item(
                  id: 2,
                  name: "PTFARM - CÀ RÓT 300G VIETGAP - (GÓI)",
                  soluong: 1,
                  dongia: 14500,
                  thanhgtien: 14500),
            ),
          ],
        ),
      ),
    );
  }
}
