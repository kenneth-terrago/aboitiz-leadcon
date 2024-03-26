import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ExploreRecord extends FirestoreRecord {
  ExploreRecord._(
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

  // "short_location" field.
  String? _shortLocation;
  String get shortLocation => _shortLocation ?? '';
  bool hasShortLocation() => _shortLocation != null;

  // "long_location" field.
  String? _longLocation;
  String get longLocation => _longLocation ?? '';
  bool hasLongLocation() => _longLocation != null;

  // "description_title" field.
  String? _descriptionTitle;
  String get descriptionTitle => _descriptionTitle ?? '';
  bool hasDescriptionTitle() => _descriptionTitle != null;

  // "description_content" field.
  String? _descriptionContent;
  String get descriptionContent => _descriptionContent ?? '';
  bool hasDescriptionContent() => _descriptionContent != null;

  // "content_title_1" field.
  String? _contentTitle1;
  String get contentTitle1 => _contentTitle1 ?? '';
  bool hasContentTitle1() => _contentTitle1 != null;

  // "content_description_1" field.
  String? _contentDescription1;
  String get contentDescription1 => _contentDescription1 ?? '';
  bool hasContentDescription1() => _contentDescription1 != null;

  // "content_title_2" field.
  String? _contentTitle2;
  String get contentTitle2 => _contentTitle2 ?? '';
  bool hasContentTitle2() => _contentTitle2 != null;

  // "content_description_2" field.
  String? _contentDescription2;
  String get contentDescription2 => _contentDescription2 ?? '';
  bool hasContentDescription2() => _contentDescription2 != null;

  // "location_map_url" field.
  String? _locationMapUrl;
  String get locationMapUrl => _locationMapUrl ?? '';
  bool hasLocationMapUrl() => _locationMapUrl != null;

  // "location_web_url" field.
  String? _locationWebUrl;
  String get locationWebUrl => _locationWebUrl ?? '';
  bool hasLocationWebUrl() => _locationWebUrl != null;

  // "inquire_url" field.
  String? _inquireUrl;
  String get inquireUrl => _inquireUrl ?? '';
  bool hasInquireUrl() => _inquireUrl != null;

  // "category_ids" field.
  List<int>? _categoryIds;
  List<int> get categoryIds => _categoryIds ?? const [];
  bool hasCategoryIds() => _categoryIds != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _title = snapshotData['title'] as String?;
    _coverImage = snapshotData['cover_image'] as String?;
    _shortLocation = snapshotData['short_location'] as String?;
    _longLocation = snapshotData['long_location'] as String?;
    _descriptionTitle = snapshotData['description_title'] as String?;
    _descriptionContent = snapshotData['description_content'] as String?;
    _contentTitle1 = snapshotData['content_title_1'] as String?;
    _contentDescription1 = snapshotData['content_description_1'] as String?;
    _contentTitle2 = snapshotData['content_title_2'] as String?;
    _contentDescription2 = snapshotData['content_description_2'] as String?;
    _locationMapUrl = snapshotData['location_map_url'] as String?;
    _locationWebUrl = snapshotData['location_web_url'] as String?;
    _inquireUrl = snapshotData['inquire_url'] as String?;
    _categoryIds = getDataList(snapshotData['category_ids']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('explore');

  static Stream<ExploreRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ExploreRecord.fromSnapshot(s));

  static Future<ExploreRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ExploreRecord.fromSnapshot(s));

  static ExploreRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ExploreRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ExploreRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ExploreRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ExploreRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ExploreRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createExploreRecordData({
  int? id,
  String? title,
  String? coverImage,
  String? shortLocation,
  String? longLocation,
  String? descriptionTitle,
  String? descriptionContent,
  String? contentTitle1,
  String? contentDescription1,
  String? contentTitle2,
  String? contentDescription2,
  String? locationMapUrl,
  String? locationWebUrl,
  String? inquireUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'title': title,
      'cover_image': coverImage,
      'short_location': shortLocation,
      'long_location': longLocation,
      'description_title': descriptionTitle,
      'description_content': descriptionContent,
      'content_title_1': contentTitle1,
      'content_description_1': contentDescription1,
      'content_title_2': contentTitle2,
      'content_description_2': contentDescription2,
      'location_map_url': locationMapUrl,
      'location_web_url': locationWebUrl,
      'inquire_url': inquireUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class ExploreRecordDocumentEquality implements Equality<ExploreRecord> {
  const ExploreRecordDocumentEquality();

  @override
  bool equals(ExploreRecord? e1, ExploreRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.title == e2?.title &&
        e1?.coverImage == e2?.coverImage &&
        e1?.shortLocation == e2?.shortLocation &&
        e1?.longLocation == e2?.longLocation &&
        e1?.descriptionTitle == e2?.descriptionTitle &&
        e1?.descriptionContent == e2?.descriptionContent &&
        e1?.contentTitle1 == e2?.contentTitle1 &&
        e1?.contentDescription1 == e2?.contentDescription1 &&
        e1?.contentTitle2 == e2?.contentTitle2 &&
        e1?.contentDescription2 == e2?.contentDescription2 &&
        e1?.locationMapUrl == e2?.locationMapUrl &&
        e1?.locationWebUrl == e2?.locationWebUrl &&
        e1?.inquireUrl == e2?.inquireUrl &&
        listEquality.equals(e1?.categoryIds, e2?.categoryIds);
  }

  @override
  int hash(ExploreRecord? e) => const ListEquality().hash([
        e?.id,
        e?.title,
        e?.coverImage,
        e?.shortLocation,
        e?.longLocation,
        e?.descriptionTitle,
        e?.descriptionContent,
        e?.contentTitle1,
        e?.contentDescription1,
        e?.contentTitle2,
        e?.contentDescription2,
        e?.locationMapUrl,
        e?.locationWebUrl,
        e?.inquireUrl,
        e?.categoryIds
      ]);

  @override
  bool isValidKey(Object? o) => o is ExploreRecord;
}
