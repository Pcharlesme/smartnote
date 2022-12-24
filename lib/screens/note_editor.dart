import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:toddo/style/stylemanager.dart';

class NoteEditor extends StatefulWidget {
  const NoteEditor({super.key});

  @override
  State<NoteEditor> createState() => _NoteEditorState();
}

class _NoteEditorState extends State<NoteEditor> {
  String date = DateTime.now().toString();
  int color_id = Random().nextInt(AppStyle.cardColor.length);
  TextEditingController _titlecontroller = TextEditingController();
  TextEditingController _maincontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppStyle.cardColor[color_id],
      appBar: AppBar(
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        title: const Text(
          "Add a new Note",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: AppStyle.cardColor[color_id],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextField(
              controller: _titlecontroller,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: 'Note title'),
              style: AppStyle.mainTitle,
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              date,
              style: AppStyle.dateTitle,
            ),
            const SizedBox(
              height: 8,
            ),
            TextField(
              keyboardType: TextInputType.multiline,
              maxLines: null,
              controller: _maincontroller,
              decoration: const InputDecoration(
                  border: InputBorder.none, hintText: 'Note content'),
              style: AppStyle.maincontent,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          FirebaseFirestore.instance.collection("Notes").add({
            "note_title": _titlecontroller.text,
            "creation_date": date,
            "note_content": _maincontroller.text,
            "color_id": color_id
          }).then((value) => Navigator.pop(context));
        },
        backgroundColor: AppStyle.kaccentcolor,
        child: const Icon(Icons.save),
      ),
    );
  }
}
