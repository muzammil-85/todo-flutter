import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> uploadingData(String _title, String _description) async {
  await FirebaseFirestore.instance.collection("products").add({
    'title': _title,
    'description': _description,

  });
}