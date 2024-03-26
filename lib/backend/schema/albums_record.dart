import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AlbumsRecord extends FirestoreRecord {
  AlbumsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  bool hasId() => _id != null;

  // "album_title" field.
  String? _albumTitle;
  String get albumTitle => _albumTitle ?? '';
  bool hasAlbumTitle() => _albumTitle != null;

  // "cover_image" field.
  String? _coverImage;
  String get coverImage => _coverImage ?? '';
  bool hasCoverImage() => _coverImage != null;

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _albumTitle = snapshotData['album_title'] as String?;
    _coverImage = snapshotData['cover_image'] as String?;
    _date = snapshotData['date'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('albums');

  static Stream<AlbumsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AlbumsRecord.fromSnapshot(s));

  static Future<AlbumsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AlbumsRecord.fromSnapshot(s));

  static AlbumsRecord fromSnapshot(DocumentSnapshot snapshot) => AlbumsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AlbumsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AlbumsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AlbumsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AlbumsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAlbumsRecordData({
  int? id,
  String? albumTitle,
  String? coverImage,
  DateTime? date,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'album_title': albumTitle,
      'cover_image': coverImage,
      'date': date,
    }.withoutNulls,
  );

  return firestoreData;
}

class AlbumsRecordDocumentEquality implements Equality<AlbumsRecord> {
  const AlbumsRecordDocumentEquality();

  @override
  bool equals(AlbumsRecord? e1, AlbumsRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.albumTitle == e2?.albumTitle &&
        e1?.coverImage == e2?.coverImage &&
        e1?.date == e2?.date;
  }

  @override
  int hash(AlbumsRecord? e) =>
      const ListEquality().hash([e?.id, e?.albumTitle, e?.coverImage, e?.date]);

  @override
  bool isValidKey(Object? o) => o is AlbumsRecord;
}
