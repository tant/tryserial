import 'package:flutter/material.dart';
import 'package:mydebug/data/data.dart';

class PaymentItem extends StatelessWidget {
  const PaymentItem({super.key, required this.item});
  final Item item;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(item.name),
        Padding(
          padding: const EdgeInsets.only(top: 4, bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("SL: ${item.soluong}"),
              Text("ĐG: ${item.dongia}"),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Thành tiền: ${item.thanhgtien}"),
              const Icon(
                Icons.delete_outline,
                color: Colors.red,
                size: 20,
              )
            ],
          ),
        ),
      ],
    );
  }
}
