import 'package:flutter/material.dart';
import 'package:note_app/widgets/custom_bottom.dart';
import 'package:note_app/widgets/custom_text_field.dart';

class AddNotaBottomSheet extends StatefulWidget {
  const AddNotaBottomSheet({Key? key}) : super(key: key);

  @override
  State<AddNotaBottomSheet> createState() => _AddNotaBottomSheetState();
}

class _AddNotaBottomSheetState extends State<AddNotaBottomSheet> {

  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 32.0,
        right: 16.0,
        left: 16.0
      ),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              CustomTextField(
                onSaved: (value)
                {
                  title = value;
                },
                hint: 'title',
              ),
              const SizedBox(height: 20.0),
              CustomTextField(
                onSaved: (value)
                {
                  subTitle = value;
                },
                hint: 'content',
                maxline: 7,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30.0,
                  bottom: 20.0
                ),
                child: CustomBottom(
                  onTap: ()
                  {
                    if(formKey.currentState!.validate())
                    {
                      formKey.currentState!.save();
                    }else{
                      autovalidateMode = AutovalidateMode.always;
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
