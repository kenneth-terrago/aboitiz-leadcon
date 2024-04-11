import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class CountryCodesRecord extends FirestoreRecord {
  CountryCodesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "country_code" field.
  String? _countryCode;
  String get countryCode => _countryCode ?? '';
  bool hasCountryCode() => _countryCode != null;

  void _initializeFields() {
    _id = snapshotData['id'] as String?;
    _countryCode = snapshotData['country_code'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('country_codes');

  static Stream<CountryCodesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CountryCodesRecord.fromSnapshot(s));

  static Future<CountryCodesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CountryCodesRecord.fromSnapshot(s));

  static CountryCodesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CountryCodesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CountryCodesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CountryCodesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CountryCodesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CountryCodesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCountryCodesRecordData({
  String? id,
  String? countryCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'country_code': countryCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class CountryCodesRecordDocumentEquality
    implements Equality<CountryCodesRecord> {
  const CountryCodesRecordDocumentEquality();

  @override
  bool equals(CountryCodesRecord? e1, CountryCodesRecord? e2) {
    return e1?.id == e2?.id && e1?.countryCode == e2?.countryCode;
  }

  @override
  int hash(CountryCodesRecord? e) =>
      const ListEquality().hash([e?.id, e?.countryCode]);

  @override
  bool isValidKey(Object? o) => o is CountryCodesRecord;
}
