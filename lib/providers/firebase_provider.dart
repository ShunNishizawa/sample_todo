import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/item/item.dart';

final itemStreamProvider = StreamProvider<List<Item>>((ref) {
  final collection = FirebaseFirestore.instance.collection('items');

  final stream = collection
      .snapshots()
      .map((event) => event.docs.map((e) => Item.fromJson(e.data())).toList());

  return stream;
});
