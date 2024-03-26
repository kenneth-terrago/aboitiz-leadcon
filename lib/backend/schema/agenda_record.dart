import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AgendaRecord extends FirestoreRecord {
  AgendaRecord._(
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

  // "date" field.
  DateTime? _date;
  DateTime? get date => _date;
  bool hasDate() => _date != null;

  // "start_time" field.
  DateTime? _startTime;
  DateTime? get startTime => _startTime;
  bool hasStartTime() => _startTime != null;

  // "end_time" field.
  DateTime? _endTime;
  DateTime? get endTime => _endTime;
  bool hasEndTime() => _endTime != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  bool hasLocation() => _location != null;

  // "cover_image" field.
  String? _coverImage;
  String get coverImage => _coverImage ?? '';
  bool hasCoverImage() => _coverImage != null;

  // "presenters" field.
  String? _presenters;
  String get presenters => _presenters ?? '';
  bool hasPresenters() => _presenters != null;

  // "event_details" field.
  String? _eventDetails;
  String get eventDetails => _eventDetails ?? '';
  bool hasEventDetails() => _eventDetails != null;

  // "dress_code" field.
  String? _dressCode;
  String get dressCode => _dressCode ?? '';
  bool hasDressCode() => _dressCode != null;

  // "location_specific" field.
  String? _locationSpecific;
  String get locationSpecific => _locationSpecific ?? '';
  bool hasLocationSpecific() => _locationSpecific != null;

  // "attendees_name" field.
  List<String>? _attendeesName;
  List<String> get attendeesName => _attendeesName ?? const [];
  bool hasAttendeesName() => _attendeesName != null;

  // "exclude_end_time" field.
  bool? _excludeEndTime;
  bool get excludeEndTime => _excludeEndTime ?? false;
  bool hasExcludeEndTime() => _excludeEndTime != null;

  void _initializeFields() {
    _id = castToType<int>(snapshotData['id']);
    _title = snapshotData['title'] as String?;
    _date = snapshotData['date'] as DateTime?;
    _startTime = snapshotData['start_time'] as DateTime?;
    _endTime = snapshotData['end_time'] as DateTime?;
    _location = snapshotData['location'] as String?;
    _coverImage = snapshotData['cover_image'] as String?;
    _presenters = snapshotData['presenters'] as String?;
    _eventDetails = snapshotData['event_details'] as String?;
    _dressCode = snapshotData['dress_code'] as String?;
    _locationSpecific = snapshotData['location_specific'] as String?;
    _attendeesName = getDataList(snapshotData['attendees_name']);
    _excludeEndTime = snapshotData['exclude_end_time'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('agenda');

  static Stream<AgendaRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AgendaRecord.fromSnapshot(s));

  static Future<AgendaRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AgendaRecord.fromSnapshot(s));

  static AgendaRecord fromSnapshot(DocumentSnapshot snapshot) => AgendaRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AgendaRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AgendaRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AgendaRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AgendaRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAgendaRecordData({
  int? id,
  String? title,
  DateTime? date,
  DateTime? startTime,
  DateTime? endTime,
  String? location,
  String? coverImage,
  String? presenters,
  String? eventDetails,
  String? dressCode,
  String? locationSpecific,
  bool? excludeEndTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'id': id,
      'title': title,
      'date': date,
      'start_time': startTime,
      'end_time': endTime,
      'location': location,
      'cover_image': coverImage,
      'presenters': presenters,
      'event_details': eventDetails,
      'dress_code': dressCode,
      'location_specific': locationSpecific,
      'exclude_end_time': excludeEndTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class AgendaRecordDocumentEquality implements Equality<AgendaRecord> {
  const AgendaRecordDocumentEquality();

  @override
  bool equals(AgendaRecord? e1, AgendaRecord? e2) {
    const listEquality = ListEquality();
    return e1?.id == e2?.id &&
        e1?.title == e2?.title &&
        e1?.date == e2?.date &&
        e1?.startTime == e2?.startTime &&
        e1?.endTime == e2?.endTime &&
        e1?.location == e2?.location &&
        e1?.coverImage == e2?.coverImage &&
        e1?.presenters == e2?.presenters &&
        e1?.eventDetails == e2?.eventDetails &&
        e1?.dressCode == e2?.dressCode &&
        e1?.locationSpecific == e2?.locationSpecific &&
        listEquality.equals(e1?.attendeesName, e2?.attendeesName) &&
        e1?.excludeEndTime == e2?.excludeEndTime;
  }

  @override
  int hash(AgendaRecord? e) => const ListEquality().hash([
        e?.id,
        e?.title,
        e?.date,
        e?.startTime,
        e?.endTime,
        e?.location,
        e?.coverImage,
        e?.presenters,
        e?.eventDetails,
        e?.dressCode,
        e?.locationSpecific,
        e?.attendeesName,
        e?.excludeEndTime
      ]);

  @override
  bool isValidKey(Object? o) => o is AgendaRecord;
}
