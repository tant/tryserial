import 'package:flutter/material.dart';
import 'package:mydebug/data/data.dart';
import 'package:mydebug/widgets/payment_item.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String customer = "ABC";
    int tongTienHang = 194560;
    int thue = 19456;
    int tongCong = 214016;

    TextStyle headingStyle = const TextStyle(
        fontWeight: FontWeight.w500, fontSize: 22, color: Color(0xFF14181B));
    TextStyle contentStyle = const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w400, color: Color(0xFF57636C));

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          children: [
            // HÓA ĐƠN
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 4, 16, 16),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 2,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Đơn Hàng",
                      style: headingStyle,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 4, bottom: 12),
                      child: Text("Khách hàng: $customer"),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 12),
                      child: ListView.separated(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: PaymentItem(item: items[index]),
                          );
                        },
                        separatorBuilder: (context, index) {
                          return const Divider();
                        },
                        itemCount: items.length,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                      ),
                    ),
                    // TỔNG TIỀN
                    Padding(
                      padding: const EdgeInsets.only(top: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tổng số tiền",
                            style: headingStyle,
                          ),
                          const Divider(),
                          const Text("Các khoản phải trả"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Tổng tiền hàng:"),
                              Text("$tongTienHang đ"),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text("Thuế:"),
                              Text("$thue đ"),
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                "Tổng cộng",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 20,
                                ),
                              ),
                              IconButton(
                                iconSize: 18,
                                onPressed: () {},
                                icon: const Icon(Icons.info_outline),
                              ),
                            ],
                          ),
                          Text(
                            "$tongCong đ",
                            style: const TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 36,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            // NÚT THANH TOÁN
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
              child: ElevatedButton(
                onPressed: () {
                  debugPrint("Thanh toán bằng vân tay được chọn");
                },
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Thanh toán bằng vân tay"),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
