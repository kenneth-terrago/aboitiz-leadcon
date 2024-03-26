import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CsusRecord extends FirestoreRecord {
  CsusRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "csu" field.
  String? _csu;
  String get csu => _csu ?? '';
  bool hasCsu() => _csu != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _csu = snapshotData['csu'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('csus');

  static Stream<CsusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CsusRecord.fromSnapshot(s));

  static Future<CsusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CsusRecord.fromSnapshot(s));

  static CsusRecord fromSnapshot(DocumentSnapshot snapshot) => CsusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CsusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CsusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CsusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CsusRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCsusRecordData({
  String? id,
  String? csu,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'csu': csu,
    }.withoutNulls,
  );

  return firestoreData;
}

class CsusRecordDocumentEquality implements Equality<CsusRecord> {
  const CsusRecordDocumentEquality();

  @override
  bool equals(CsusRecord? e1, CsusRecord? e2) {
    return e1?.id == e2?.id && e1?.csu == e2?.csu;
  }

  @override
  int hash(CsusRecord? e) => const ListEquality().hash([e?.id, e?.csu]);

  @override
  bool isValidKey(Object? o) => o is CsusRecord;
}
