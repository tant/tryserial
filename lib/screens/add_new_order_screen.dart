import 'package:flutter/material.dart';
import 'package:mydebug/data/data.dart';
import 'package:mydebug/widgets/item_card.dart';

class AddNewOrderScreen extends StatefulWidget {
  const AddNewOrderScreen({super.key});

  @override
  State<AddNewOrderScreen> createState() => _AddNewOrderScreenState();
}

class _AddNewOrderScreenState extends State<AddNewOrderScreen> {
  Widget _addNewOrder() {
    print("Add new order");
    int newId = items.length + 1;
    items.add(Item(
        id: newId,
        name: "PTFARM - CÀ RÓT 300G VIETGAP - (GÓI)",
        soluong: 1,
        dongia: 14500,
        thanhgtien: 14500));
    // _updateDecreaseData(newId);
    setState(() {});
    return ItemCard(item: items[items.length - 1]);
  }

  void _removeOrder(Item item) {
    print("Remove order");
    for (int i = 0; i < items.length; i++) {
      if (items[i] == item) {
        items.removeAt(i);
        break;
      }
    }
    setState(() {});
  }

  // void _updateDecreaseData() {
  //   print("Disable decrease");
  //   for (int i = 0; i < items.length; i++) {
  //     if (items[i].id == id) {
  //       if (items[i].soluong == 1) {
  //         items[i].isEnableDecrease = false;
  //       }
  //       if (items[i].soluong > 1 && items[i].isEnableDecrease == false) {
  //         items[i].isEnableDecrease = true;
  //       }
  //       break;
  //     }
  //   }
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Add new order"),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: _addNewOrder,
          child: const Icon(Icons.add),
        ),
        body: Center(
          child: Column(
            children: List.generate(items.length, (index) {
              return Card(
                child: ListTile(
                    title: Text(items[index].name),
                    subtitle: Text("Số lượng: ${items[index].soluong}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          disabledColor: Colors.grey,
                          color: Colors.blue,
                          onPressed: items[index].isEnableDecrease
                              ? () {
                                  // _decreaseQuantity(items[index].id);
                                }
                              : null,
                          icon: const Icon(Icons.remove),
                        ),
                        IconButton(
                          color: Colors.blue,
                          onPressed: () {
                            // _increaseQuantity(items[index].id);
                          },
                          icon: const Icon(Icons.add),
                        ),
                        IconButton(
                          color: Colors.red,
                          onPressed: () {
                            // _removeOrder(items[index].id);
                          },
                          icon: const Icon(Icons.delete),
                        ),
                      ],
                    )),
              );
            }),
          ),
        ));
  }
}
