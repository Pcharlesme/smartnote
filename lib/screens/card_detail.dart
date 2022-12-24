import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:toddo/style/stylemanager.dart';

Widget noteCard(Function()? onTap, QueryDocumentSnapshot doc) {
  return InkWell(
    onTap: onTap,
    child: Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: AppStyle.cardColor[doc['color_id']],
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            doc["note_title"],
            style: AppStyle.mainTitle,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            doc["creation_date"],
            style: AppStyle.dateTitle,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            doc["note_content"],
            style: AppStyle.maincontent,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    ),
  );
}
