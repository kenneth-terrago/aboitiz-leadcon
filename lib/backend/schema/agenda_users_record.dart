import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendaUsersRecord extends FirestoreRecord {
  AgendaUsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "agenda_id" field.
  int? _agendaId;
  int get agendaId => _agendaId ?? 0;
  bool hasAgendaId() => _agendaId != null;

  // "user_id" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _agendaId = castToType<int>(snapshotData['agenda_id']);
    _userId = snapshotData['user_id'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agenda_users');

  static Stream<AgendaUsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgendaUsersRecord.fromSnapshot(s));

  static Future<AgendaUsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgendaUsersRecord.fromSnapshot(s));

  static AgendaUsersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AgendaUsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgendaUsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgendaUsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgendaUsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgendaUsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgendaUsersRecordData({
  int? agendaId,
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'agenda_id': agendaId,
      'user_id': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgendaUsersRecordDocumentEquality implements Equality<AgendaUsersRecord> {
  const AgendaUsersRecordDocumentEquality();

  @override
  bool equals(AgendaUsersRecord? e1, AgendaUsersRecord? e2) {
    return e1?.agendaId == e2?.agendaId && e1?.userId == e2?.userId;
  }

  @override
  int hash(AgendaUsersRecord? e) =>
      const ListEquality().hash([e?.agendaId, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is AgendaUsersRecord;
}
