import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNotaBottomSheet extends StatelessWidget {
  const AddNotaBottomSheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32.0,
        right: 16.0,
        left: 16.0
      ),
      child: Column(
        children: const [
          CustomTextField()
        ],
      ),
    );
  }
}
