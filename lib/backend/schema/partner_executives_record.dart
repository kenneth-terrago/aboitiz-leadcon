import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PartnerExecutivesRecord extends FirestoreRecord {
  PartnerExecutivesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "partner_id" field.
  int? _partnerId;
  int get partnerId => _partnerId ?? 0;
  bool hasPartnerId() => _partnerId != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "position" field.
  String? _position;
  String get position => _position ?? '';
  bool hasPosition() => _position != null;

  // "avatar_image" field.
  String? _avatarImage;
  String get avatarImage => _avatarImage ?? '';
  bool hasAvatarImage() => _avatarImage != null;

  // "agenda_id" field.
  int? _agendaId;
  int get agendaId => _agendaId ?? 0;
  bool hasAgendaId() => _agendaId != null;

  // "unit" field.
  String? _unit;
  String get unit => _unit ?? '';
  bool hasUnit() => _unit != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _partnerId = castToType<int>(snapshotData['partner_id']);
    _name = snapshotData['name'] as String?;
    _position = snapshotData['position'] as String?;
    _avatarImage = snapshotData['avatar_image'] as String?;
    _agendaId = castToType<int>(snapshotData['agenda_id']);
    _unit = snapshotData['unit'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('partner_executives');

  static Stream<PartnerExecutivesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PartnerExecutivesRecord.fromSnapshot(s));

  static Future<PartnerExecutivesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PartnerExecutivesRecord.fromSnapshot(s));

  static PartnerExecutivesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PartnerExecutivesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PartnerExecutivesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PartnerExecutivesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PartnerExecutivesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PartnerExecutivesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPartnerExecutivesRecordData({
  int? id,
  int? partnerId,
  String? name,
  String? position,
  String? avatarImage,
  int? agendaId,
  String? unit,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'partner_id': partnerId,
      'name': name,
      'position': position,
      'avatar_image': avatarImage,
      'agenda_id': agendaId,
      'unit': unit,
    }.withoutNulls,
  );

  return firestoreData;
}

class PartnerExecutivesRecordDocumentEquality
    implements Equality<PartnerExecutivesRecord> {
  const PartnerExecutivesRecordDocumentEquality();

  @override
  bool equals(PartnerExecutivesRecord? e1, PartnerExecutivesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.partnerId == e2?.partnerId &&
        e1?.name == e2?.name &&
        e1?.position == e2?.position &&
        e1?.avatarImage == e2?.avatarImage &&
        e1?.agendaId == e2?.agendaId &&
        e1?.unit == e2?.unit;
  }

  @override
  int hash(PartnerExecutivesRecord? e) => const ListEquality().hash([
        e?.id,
        e?.partnerId,
        e?.name,
        e?.position,
        e?.avatarImage,
        e?.agendaId,
        e?.unit
      ]);

  @override
  bool isValidKey(Object? o) => o is PartnerExecutivesRecord;
}
