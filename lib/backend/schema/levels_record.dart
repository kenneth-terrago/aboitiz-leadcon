import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class LevelsRecord extends FirestoreRecord {
  LevelsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  bool hasLevel() => _level != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _level = snapshotData['level'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('levels');

  static Stream<LevelsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LevelsRecord.fromSnapshot(s));

  static Future<LevelsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LevelsRecord.fromSnapshot(s));

  static LevelsRecord fromSnapshot(DocumentSnapshot snapshot) => LevelsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LevelsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LevelsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LevelsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LevelsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLevelsRecordData({
  String? id,
  String? level,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'level': level,
    }.withoutNulls,
  );

  return firestoreData;
}

class LevelsRecordDocumentEquality implements Equality<LevelsRecord> {
  const LevelsRecordDocumentEquality();

  @override
  bool equals(LevelsRecord? e1, LevelsRecord? e2) {
    return e1?.id == e2?.id && e1?.level == e2?.level;
  }

  @override
  int hash(LevelsRecord? e) => const ListEquality().hash([e?.id, e?.level]);

  @override
  bool isValidKey(Object? o) => o is LevelsRecord;
}
