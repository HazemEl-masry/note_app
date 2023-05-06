import 'package:flutter/material.dart';

class CustomBottom extends StatelessWidget {
  const CustomBottom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 55.0,
      decoration: BoxDecoration(
          color: Colors.indigo,
          borderRadius: BorderRadius.circular(16.0)
      ),
      child: const Center(
        child: Text(
            "Add",
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w700
          ),
        ),
      ),
    );
  }
}
