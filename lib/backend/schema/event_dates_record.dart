import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventDatesRecord extends FirestoreRecord {
  EventDatesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "day_no" field.
  int? _dayNo;
  int get dayNo => _dayNo ?? 0;
  bool hasDayNo() => _dayNo != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _dayNo = castToType<int>(snapshotData['day_no']);
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('event_dates');

  static Stream<EventDatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventDatesRecord.fromSnapshot(s));

  static Future<EventDatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventDatesRecord.fromSnapshot(s));

  static EventDatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EventDatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventDatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventDatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventDatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventDatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventDatesRecordData({
  int? dayNo,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'day_no': dayNo,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventDatesRecordDocumentEquality implements Equality<EventDatesRecord> {
  const EventDatesRecordDocumentEquality();

  @override
  bool equals(EventDatesRecord? e1, EventDatesRecord? e2) {
    return e1?.dayNo == e2?.dayNo && e1?.date == e2?.date;
  }

  @override
  int hash(EventDatesRecord? e) =>
      const ListEquality().hash([e?.dayNo, e?.date]);

  @override
  bool isValidKey(Object? o) => o is EventDatesRecord;
}
