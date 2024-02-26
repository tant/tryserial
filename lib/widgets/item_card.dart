import 'package:flutter/material.dart';
import 'package:mydebug/data/data.dart';

class ItemCard extends StatefulWidget {
  final Item item = Item(
      id: 1,
      name: "PTFARM - CÀ RÓT 300G VIETGAP - (GÓI)",
      soluong: 5,
      dongia: 14500,
      thanhgtien: 14500);
  ItemCard({super.key, required Item item});

  @override
  State<ItemCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<ItemCard> {
  bool isDispose = false;
  @override
  void initState() {
    super.initState();
  }

  void _decreaseQuantity() {
    setState(() {
      if (widget.item.soluong > 1) {
        widget.item.soluong--;
      }
    });
  }

  void _increaseQuantity() {
    setState(() {
      widget.item.soluong++;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isDispose) {
      return Container();
    } else {
      return Card(
        child: ListTile(
            title: Text(widget.item.name),
            subtitle: Text("Số lượng: ${widget.item.soluong}"),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  disabledColor: Colors.grey,
                  color: Colors.blue,
                  onPressed: widget.item.soluong > 1
                      ? () {
                          _decreaseQuantity();
                        }
                      : null,
                  icon: const Icon(Icons.remove),
                ),
                IconButton(
                  color: Colors.blue,
                  onPressed: () => _increaseQuantity(),
                  icon: const Icon(Icons.add),
                ),
                IconButton(
                  color: Colors.red,
                  onPressed: () {
                    setState(() {
                      isDispose = true;
                    });
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            )),
      );
    }
  }
}
