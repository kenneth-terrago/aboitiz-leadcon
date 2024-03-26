import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PartnerLinksRecord extends FirestoreRecord {
  PartnerLinksRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "partner_id" field.
  String? _partnerId;
  String get partnerId => _partnerId ?? '';
  bool hasPartnerId() => _partnerId != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _link = snapshotData['link'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _partnerId = snapshotData['partner_id'] as String?;
    _icon = snapshotData['icon'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('partner_links');

  static Stream<PartnerLinksRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PartnerLinksRecord.fromSnapshot(s));

  static Future<PartnerLinksRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PartnerLinksRecord.fromSnapshot(s));

  static PartnerLinksRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PartnerLinksRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PartnerLinksRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PartnerLinksRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PartnerLinksRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PartnerLinksRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPartnerLinksRecordData({
  int? id,
  String? link,
  String? displayName,
  String? partnerId,
  String? icon,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'link': link,
      'display_name': displayName,
      'partner_id': partnerId,
      'icon': icon,
    }.withoutNulls,
  );

  return firestoreData;
}

class PartnerLinksRecordDocumentEquality
    implements Equality<PartnerLinksRecord> {
  const PartnerLinksRecordDocumentEquality();

  @override
  bool equals(PartnerLinksRecord? e1, PartnerLinksRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.link == e2?.link &&
        e1?.displayName == e2?.displayName &&
        e1?.partnerId == e2?.partnerId &&
        e1?.icon == e2?.icon;
  }

  @override
  int hash(PartnerLinksRecord? e) => const ListEquality()
      .hash([e?.id, e?.link, e?.displayName, e?.partnerId, e?.icon]);

  @override
  bool isValidKey(Object? o) => o is PartnerLinksRecord;
}
