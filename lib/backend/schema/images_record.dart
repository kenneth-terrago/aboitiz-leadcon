import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ImagesRecord extends FirestoreRecord {
  ImagesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "image_link" field.
  String? _imageLink;
  String get imageLink => _imageLink ?? '';
  bool hasImageLink() => _imageLink != null;

  // "album_id" field.
  int? _albumId;
  int get albumId => _albumId ?? 0;
  bool hasAlbumId() => _albumId != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  bool hasCategory() => _category != null;

  // "image_link_string" field.
  String? _imageLinkString;
  String get imageLinkString => _imageLinkString ?? '';
  bool hasImageLinkString() => _imageLinkString != null;

  // "partner_id" field.
  int? _partnerId;
  int get partnerId => _partnerId ?? 0;
  bool hasPartnerId() => _partnerId != null;

  // "video_link" field.
  String? _videoLink;
  String get videoLink => _videoLink ?? '';
  bool hasVideoLink() => _videoLink != null;

  // "video_link_string" field.
  String? _videoLinkString;
  String get videoLinkString => _videoLinkString ?? '';
  bool hasVideoLinkString() => _videoLinkString != null;

  // "agenda_id" field.
  int? _agendaId;
  int get agendaId => _agendaId ?? 0;
  bool hasAgendaId() => _agendaId != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _imageLink = snapshotData['image_link'] as String?;
    _albumId = castToType<int>(snapshotData['album_id']);
    _title = snapshotData['title'] as String?;
    _category = snapshotData['category'] as String?;
    _imageLinkString = snapshotData['image_link_string'] as String?;
    _partnerId = castToType<int>(snapshotData['partner_id']);
    _videoLink = snapshotData['video_link'] as String?;
    _videoLinkString = snapshotData['video_link_string'] as String?;
    _agendaId = castToType<int>(snapshotData['agenda_id']);
    _type = snapshotData['type'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('images');

  static Stream<ImagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ImagesRecord.fromSnapshot(s));

  static Future<ImagesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ImagesRecord.fromSnapshot(s));

  static ImagesRecord fromSnapshot(DocumentSnapshot snapshot) => ImagesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ImagesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ImagesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ImagesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ImagesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createImagesRecordData({
  int? id,
  String? imageLink,
  int? albumId,
  String? title,
  String? category,
  String? imageLinkString,
  int? partnerId,
  String? videoLink,
  String? videoLinkString,
  int? agendaId,
  String? type,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'image_link': imageLink,
      'album_id': albumId,
      'title': title,
      'category': category,
      'image_link_string': imageLinkString,
      'partner_id': partnerId,
      'video_link': videoLink,
      'video_link_string': videoLinkString,
      'agenda_id': agendaId,
      'type': type,
    }.withoutNulls,
  );

  return firestoreData;
}

class ImagesRecordDocumentEquality implements Equality<ImagesRecord> {
  const ImagesRecordDocumentEquality();

  @override
  bool equals(ImagesRecord? e1, ImagesRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.imageLink == e2?.imageLink &&
        e1?.albumId == e2?.albumId &&
        e1?.title == e2?.title &&
        e1?.category == e2?.category &&
        e1?.imageLinkString == e2?.imageLinkString &&
        e1?.partnerId == e2?.partnerId &&
        e1?.videoLink == e2?.videoLink &&
        e1?.videoLinkString == e2?.videoLinkString &&
        e1?.agendaId == e2?.agendaId &&
        e1?.type == e2?.type;
  }

  @override
  int hash(ImagesRecord? e) => const ListEquality().hash([
        e?.id,
        e?.imageLink,
        e?.albumId,
        e?.title,
        e?.category,
        e?.imageLinkString,
        e?.partnerId,
        e?.videoLink,
        e?.videoLinkString,
        e?.agendaId,
        e?.type
      ]);

  @override
  bool isValidKey(Object? o) => o is ImagesRecord;
}
