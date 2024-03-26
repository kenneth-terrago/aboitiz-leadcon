import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class BusRecord extends FirestoreRecord {
  BusRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "bu" field.
  String? _bu;
  String get bu => _bu ?? '';
  bool hasBu() => _bu != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _bu = snapshotData['bu'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('bus');

  static Stream<BusRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BusRecord.fromSnapshot(s));

  static Future<BusRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BusRecord.fromSnapshot(s));

  static BusRecord fromSnapshot(DocumentSnapshot snapshot) => BusRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BusRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BusRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BusRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BusRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBusRecordData({
  String? id,
  String? bu,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'bu': bu,
    }.withoutNulls,
  );

  return firestoreData;
}

class BusRecordDocumentEquality implements Equality<BusRecord> {
  const BusRecordDocumentEquality();

  @override
  bool equals(BusRecord? e1, BusRecord? e2) {
    return e1?.id == e2?.id && e1?.bu == e2?.bu;
  }

  @override
  int hash(BusRecord? e) => const ListEquality().hash([e?.id, e?.bu]);

  @override
  bool isValidKey(Object? o) => o is BusRecord;
}
