import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SbusRecord extends FirestoreRecord {
  SbusRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "sbu_name" field.
  String? _sbuName;
  String get sbuName => _sbuName ?? '';
  bool hasSbuName() => _sbuName != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _sbuName = snapshotData['sbu_name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('sbus');

  static Stream<SbusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SbusRecord.fromSnapshot(s));

  static Future<SbusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SbusRecord.fromSnapshot(s));

  static SbusRecord fromSnapshot(DocumentSnapshot snapshot) => SbusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SbusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SbusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SbusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SbusRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSbusRecordData({
  String? id,
  String? sbuName,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'sbu_name': sbuName,
    }.withoutNulls,
  );

  return firestoreData;
}

class SbusRecordDocumentEquality implements Equality<SbusRecord> {
  const SbusRecordDocumentEquality();

  @override
  bool equals(SbusRecord? e1, SbusRecord? e2) {
    return e1?.id == e2?.id && e1?.sbuName == e2?.sbuName;
  }

  @override
  int hash(SbusRecord? e) => const ListEquality().hash([e?.id, e?.sbuName]);

  @override
  bool isValidKey(Object? o) => o is SbusRecord;
}
