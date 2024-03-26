import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExploreCategoriesRecord extends FirestoreRecord {
  ExploreCategoriesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('explore_categories');

  static Stream<ExploreCategoriesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExploreCategoriesRecord.fromSnapshot(s));

  static Future<ExploreCategoriesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => ExploreCategoriesRecord.fromSnapshot(s));

  static ExploreCategoriesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExploreCategoriesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExploreCategoriesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExploreCategoriesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExploreCategoriesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExploreCategoriesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExploreCategoriesRecordData({
  int? id,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExploreCategoriesRecordDocumentEquality
    implements Equality<ExploreCategoriesRecord> {
  const ExploreCategoriesRecordDocumentEquality();

  @override
  bool equals(ExploreCategoriesRecord? e1, ExploreCategoriesRecord? e2) {
    return e1?.id == e2?.id && e1?.title == e2?.title;
  }

  @override
  int hash(ExploreCategoriesRecord? e) =>
      const ListEquality().hash([e?.id, e?.title]);

  @override
  bool isValidKey(Object? o) => o is ExploreCategoriesRecord;
}
