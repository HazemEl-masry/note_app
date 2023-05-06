import 'package:flutter/material.dart';
import 'package:note_app/widgets/add_note_bottom_sheet.dart';
import 'package:note_app/widgets/note_list_item.dart';

class NotesView extends StatelessWidget {
  const NotesView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()
      {
        showModalBottomSheet(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
          context: context, builder: (context) {
          return const AddNotaBottomSheet();
        },);
      },
          backgroundColor: Colors.indigo,
      child: const Icon(Icons.add,color: Colors.white)),
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
              const Expanded(child: NoteListItem())
            ],
          ),
        ),
      ),
    );
  }
}
