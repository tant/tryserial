class Item {
  int id;
  String name;
  double soluong;
  int dongia;
  int thanhgtien;
  bool isEnableDecrease = true;
  Item(
      {required this.id,
      required this.name,
      required this.soluong,
      required this.dongia,
      required this.thanhgtien});
  void _increaseQuantity() {
    print("Increase quantity");
    soluong++;
  }

  void _decreaseQuantity() {
    print("Decrease quantity");
    if (soluong > 1) {
      soluong--;
    }
  }

  void remove() {
    print("Remove item");
    items.remove(this);
  }
}

List<Item> items = [
  // Item(
  //     id: 1,
  //     name: "PTFARM - CÀ RÓT 300G VIETGAP - (GÓI)",
  //     soluong: 1,
  //     dongia: 14500,
  //     thanhgtien: 14500),
  // Item(
  //     id: 2,
  //     name: "PTFARM - CÀ RÓT 300G VIETGAP - (GÓI)",
  //     soluong: 1,
  //     dongia: 14500,
  //     thanhgtien: 14500),
  // Item(
  //     id: 3,
  //     name: "PTFARM - CÀ RÓT 300G VIETGAP - (GÓI)",
  //     soluong: 1,
  //     dongia: 14500,
  //     thanhgtien: 14500),
  // Item(
  //     id: 4,
  //     name: "PTFARM - CÀ RÓT 300G VIETGAP - (GÓI)",
  //     soluong: 1,
  //     dongia: 14500,
  //     thanhgtien: 14500),
  // Item(
  //     id: 5,
  //     name: "PTFARM - CÀ RÓT 300G VIETGAP - (GÓI)",
  //     soluong: 1,
  //     dongia: 14500,
  //     thanhgtien: 14500),
];
