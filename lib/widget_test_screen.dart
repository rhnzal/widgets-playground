import 'package:flutter/material.dart';
import 'package:flutter_playground/widgets/button_chip.dart';

class WidgetTestScreen extends StatefulWidget {
  const WidgetTestScreen({super.key});

  @override
  State<WidgetTestScreen> createState() => _WidgetTestScreenState();
}

class _WidgetTestScreenState extends State<WidgetTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget Test'),
      ),
      body: Column(
        children: [
          BoronganChip(
            text: 'Klik disini',
            size: BoronganChipSize.small,
            textColor: Colors.red,
            borderColor: Colors.red,
          ),
          NewBoronganChip(
            text: 'Hapus', 
            borderColor: Colors.red, 
            textColor: Colors.red,
            margin: const EdgeInsets.only(bottom: 24), 
            onTap: () {}
          ),
          NewBoronganChip(
            text: 'Edit Alamat', 
            borderColor: Colors.blue, 
            textColor: Colors.blue, 
            margin: const EdgeInsets.only(left: 16),
            onTap: () {}
          )
        ],
      ),
    );
  }
}