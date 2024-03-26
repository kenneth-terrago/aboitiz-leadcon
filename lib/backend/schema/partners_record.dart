import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class PartnersRecord extends FirestoreRecord {
  PartnersRecord._(
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

  // "cover_image" field.
  String? _coverImage;
  String get coverImage => _coverImage ?? '';
  bool hasCoverImage() => _coverImage != null;

  // "content_title" field.
  String? _contentTitle;
  String get contentTitle => _contentTitle ?? '';
  bool hasContentTitle() => _contentTitle != null;

  // "content_description" field.
  String? _contentDescription;
  String get contentDescription => _contentDescription ?? '';
  bool hasContentDescription() => _contentDescription != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _title = snapshotData['title'] as String?;
    _coverImage = snapshotData['cover_image'] as String?;
    _contentTitle = snapshotData['content_title'] as String?;
    _contentDescription = snapshotData['content_description'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('partners');

  static Stream<PartnersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PartnersRecord.fromSnapshot(s));

  static Future<PartnersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => PartnersRecord.fromSnapshot(s));

  static PartnersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PartnersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PartnersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PartnersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PartnersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PartnersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPartnersRecordData({
  int? id,
  String? title,
  String? coverImage,
  String? contentTitle,
  String? contentDescription,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'title': title,
      'cover_image': coverImage,
      'content_title': contentTitle,
      'content_description': contentDescription,
    }.withoutNulls,
  );

  return firestoreData;
}

class PartnersRecordDocumentEquality implements Equality<PartnersRecord> {
  const PartnersRecordDocumentEquality();

  @override
  bool equals(PartnersRecord? e1, PartnersRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.title == e2?.title &&
        e1?.coverImage == e2?.coverImage &&
        e1?.contentTitle == e2?.contentTitle &&
        e1?.contentDescription == e2?.contentDescription;
  }

  @override
  int hash(PartnersRecord? e) => const ListEquality().hash(
      [e?.id, e?.title, e?.coverImage, e?.contentTitle, e?.contentDescription]);

  @override
  bool isValidKey(Object? o) => o is PartnersRecord;
}
