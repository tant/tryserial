import 'dart:typed_data';

import 'package:usb_serial/usb_serial.dart';
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
            body: const Center(child: MyWidget(false)),
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
    return ElevatedButton(
      onPressed: () async {
        List<UsbDevice> devices = await UsbSerial.listDevices();
        print(devices);
        UsbPort? port;
        if (devices.isEmpty) {
          return;
        } else {
          port = await devices[0].create();
          bool? openResult = await port?.open();
          if ( !openResult! ) {
            print("Failed to open");
            return;
          } else {
            await port?.setDTR(true);
            await port?.setRTS(true);

            port?.setPortParameters(115200, UsbPort.DATABITS_8,
                UsbPort.STOPBITS_1, UsbPort.PARITY_NONE);

            // print first result and close port.
            port?.inputStream?.listen((Uint8List event) {
              print(event);
              port?.close();
            });
          }
        }

      },
      style: TextButton.styleFrom(
        foregroundColor: Colors.pink,
        backgroundColor: Colors.green,
      ),
      child: const Text("Press me", style: TextStyle(fontSize: 28)),
    );
  }
}