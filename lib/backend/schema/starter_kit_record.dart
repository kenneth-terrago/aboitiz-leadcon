import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StarterKitRecord extends FirestoreRecord {
  StarterKitRecord._(
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

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "short_description" field.
  String? _shortDescription;
  String get shortDescription => _shortDescription ?? '';
  bool hasShortDescription() => _shortDescription != null;

  // "icon" field.
  String? _icon;
  String get icon => _icon ?? '';
  bool hasIcon() => _icon != null;

  // "link" field.
  String? _link;
  String get link => _link ?? '';
  bool hasLink() => _link != null;

  // "description_with_link" field.
  String? _descriptionWithLink;
  String get descriptionWithLink => _descriptionWithLink ?? '';
  bool hasDescriptionWithLink() => _descriptionWithLink != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _title = snapshotData['title'] as String?;
    _coverImage = snapshotData['cover_image'] as String?;
    _description = snapshotData['description'] as String?;
    _shortDescription = snapshotData['short_description'] as String?;
    _icon = snapshotData['icon'] as String?;
    _link = snapshotData['link'] as String?;
    _descriptionWithLink = snapshotData['description_with_link'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('starter_kit');

  static Stream<StarterKitRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => StarterKitRecord.fromSnapshot(s));

  static Future<StarterKitRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => StarterKitRecord.fromSnapshot(s));

  static StarterKitRecord fromSnapshot(DocumentSnapshot snapshot) =>
      StarterKitRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static StarterKitRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      StarterKitRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'StarterKitRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is StarterKitRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createStarterKitRecordData({
  int? id,
  String? title,
  String? coverImage,
  String? description,
  String? shortDescription,
  String? icon,
  String? link,
  String? descriptionWithLink,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'title': title,
      'cover_image': coverImage,
      'description': description,
      'short_description': shortDescription,
      'icon': icon,
      'link': link,
      'description_with_link': descriptionWithLink,
    }.withoutNulls,
  );

  return firestoreData;
}

class StarterKitRecordDocumentEquality implements Equality<StarterKitRecord> {
  const StarterKitRecordDocumentEquality();

  @override
  bool equals(StarterKitRecord? e1, StarterKitRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.title == e2?.title &&
        e1?.coverImage == e2?.coverImage &&
        e1?.description == e2?.description &&
        e1?.shortDescription == e2?.shortDescription &&
        e1?.icon == e2?.icon &&
        e1?.link == e2?.link &&
        e1?.descriptionWithLink == e2?.descriptionWithLink;
  }

  @override
  int hash(StarterKitRecord? e) => const ListEquality().hash([
        e?.id,
        e?.title,
        e?.coverImage,
        e?.description,
        e?.shortDescription,
        e?.icon,
        e?.link,
        e?.descriptionWithLink
      ]);

  @override
  bool isValidKey(Object? o) => o is StarterKitRecord;
}
