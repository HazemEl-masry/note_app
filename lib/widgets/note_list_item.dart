import 'package:flutter/material.dart';
import 'package:note_app/widgets/note_item.dart';

class NoteListItem extends StatelessWidget {
  const NoteListItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) => const Padding(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: NoteItem(),
    ),);
  }
}
