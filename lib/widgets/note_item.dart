import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 24.0,
        bottom: 24.0,
        left: 16.0
      ),
      decoration: BoxDecoration(
          color: const Color(0xffFFCC80),
          borderRadius: BorderRadius.circular(16.0)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              "Flutter Tips",
              style: TextStyle(
                  color: Colors.black,
                fontSize: 25.0
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(top: 15.0,bottom: 15.0),
              child: Text(
                "Build your carer with hazem elmasry",
                style: TextStyle(
                    color: Colors.black.withOpacity(0.5),
                  fontSize: 18.0
                ),
              ),
            ),
            trailing: IconButton(onPressed: () {},
                icon: const Icon(
                FontAwesomeIcons.trash,
                size: 25.0,
                color: Colors.black)
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Text(
                "May5,2023",
              style: TextStyle(
                  color: Colors.black.withOpacity(0.5),
                fontSize: 16.0
              ),
            ),
          )
        ],
      )
    );
  }
}
