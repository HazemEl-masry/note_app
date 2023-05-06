import 'package:flutter/material.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
              top: 16.0,
              right: 18.0,
              left: 18.0
          ),
          child: Column(
            children: [
              Row(
                children: [
                  const Text(
                    "Notes",
                    style: TextStyle(
                        fontSize: 28.0
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 48.0,
                    height: 48.0,
                    decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.06),
                        borderRadius: BorderRadius.circular(16.0)
                    ),
                    child: const Center(
                      child: Icon(Icons.search,size: 28.0),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }
}
