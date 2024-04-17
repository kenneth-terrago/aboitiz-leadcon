import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class PreregisteredUsersRecord extends FirestoreRecord {
  PreregisteredUsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "work_email" field.
  String? _workEmail;
  String get workEmail => _workEmail ?? '';
  bool hasWorkEmail() => _workEmail != null;

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "business_unit" field.
  String? _businessUnit;
  String get businessUnit => _businessUnit ?? '';
  bool hasBusinessUnit() => _businessUnit != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  bool hasLevel() => _level != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "strategic_business_unit" field.
  String? _strategicBusinessUnit;
  String get strategicBusinessUnit => _strategicBusinessUnit ?? '';
  bool hasStrategicBusinessUnit() => _strategicBusinessUnit != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "position_title" field.
  String? _positionTitle;
  String get positionTitle => _positionTitle ?? '';
  bool hasPositionTitle() => _positionTitle != null;

  // "corporate_service_unit" field.
  String? _corporateServiceUnit;
  String get corporateServiceUnit => _corporateServiceUnit ?? '';
  bool hasCorporateServiceUnit() => _corporateServiceUnit != null;

  // "sbu_id" field.
  String? _sbuId;
  String get sbuId => _sbuId ?? '';
  bool hasSbuId() => _sbuId != null;

  // "test_user" field.
  bool? _testUser;
  bool get testUser => _testUser ?? false;
  bool hasTestUser() => _testUser != null;

  // "participant_user" field.
  bool? _participantUser;
  bool get participantUser => _participantUser ?? false;
  bool hasParticipantUser() => _participantUser != null;

  // "qr_code_image_link" field.
  String? _qrCodeImageLink;
  String get qrCodeImageLink => _qrCodeImageLink ?? '';
  bool hasQrCodeImageLink() => _qrCodeImageLink != null;

  // "qr_code_image_link_string" field.
  String? _qrCodeImageLinkString;
  String get qrCodeImageLinkString => _qrCodeImageLinkString ?? '';
  bool hasQrCodeImageLinkString() => _qrCodeImageLinkString != null;

  void _initializeFields() {
    _workEmail = snapshotData['work_email'] as String?;
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _businessUnit = snapshotData['business_unit'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _displayName = snapshotData['display_name'] as String?;
    _level = snapshotData['level'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _strategicBusinessUnit = snapshotData['strategic_business_unit'] as String?;
    _uid = snapshotData['uid'] as String?;
    _positionTitle = snapshotData['position_title'] as String?;
    _corporateServiceUnit = snapshotData['corporate_service_unit'] as String?;
    _sbuId = snapshotData['sbu_id'] as String?;
    _testUser = snapshotData['test_user'] as bool?;
    _participantUser = snapshotData['participant_user'] as bool?;
    _qrCodeImageLink = snapshotData['qr_code_image_link'] as String?;
    _qrCodeImageLinkString =
        snapshotData['qr_code_image_link_string'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('preregistered_users');

  static Stream<PreregisteredUsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => PreregisteredUsersRecord.fromSnapshot(s));

  static Future<PreregisteredUsersRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => PreregisteredUsersRecord.fromSnapshot(s));

  static PreregisteredUsersRecord fromSnapshot(DocumentSnapshot snapshot) =>
      PreregisteredUsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static PreregisteredUsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      PreregisteredUsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'PreregisteredUsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is PreregisteredUsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createPreregisteredUsersRecordData({
  String? workEmail,
  String? firstName,
  String? lastName,
  String? businessUnit,
  DateTime? createdTime,
  String? displayName,
  String? level,
  String? phoneNumber,
  String? strategicBusinessUnit,
  String? uid,
  String? positionTitle,
  String? corporateServiceUnit,
  String? sbuId,
  bool? testUser,
  bool? participantUser,
  String? qrCodeImageLink,
  String? qrCodeImageLinkString,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'work_email': workEmail,
      'first_name': firstName,
      'last_name': lastName,
      'business_unit': businessUnit,
      'created_time': createdTime,
      'display_name': displayName,
      'level': level,
      'phone_number': phoneNumber,
      'strategic_business_unit': strategicBusinessUnit,
      'uid': uid,
      'position_title': positionTitle,
      'corporate_service_unit': corporateServiceUnit,
      'sbu_id': sbuId,
      'test_user': testUser,
      'participant_user': participantUser,
      'qr_code_image_link': qrCodeImageLink,
      'qr_code_image_link_string': qrCodeImageLinkString,
    }.withoutNulls,
  );

  return firestoreData;
}

class PreregisteredUsersRecordDocumentEquality
    implements Equality<PreregisteredUsersRecord> {
  const PreregisteredUsersRecordDocumentEquality();

  @override
  bool equals(PreregisteredUsersRecord? e1, PreregisteredUsersRecord? e2) {
    return e1?.workEmail == e2?.workEmail &&
        e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.businessUnit == e2?.businessUnit &&
        e1?.createdTime == e2?.createdTime &&
        e1?.displayName == e2?.displayName &&
        e1?.level == e2?.level &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.strategicBusinessUnit == e2?.strategicBusinessUnit &&
        e1?.uid == e2?.uid &&
        e1?.positionTitle == e2?.positionTitle &&
        e1?.corporateServiceUnit == e2?.corporateServiceUnit &&
        e1?.sbuId == e2?.sbuId &&
        e1?.testUser == e2?.testUser &&
        e1?.participantUser == e2?.participantUser &&
        e1?.qrCodeImageLink == e2?.qrCodeImageLink &&
        e1?.qrCodeImageLinkString == e2?.qrCodeImageLinkString;
  }

  @override
  int hash(PreregisteredUsersRecord? e) => const ListEquality().hash([
        e?.workEmail,
        e?.firstName,
        e?.lastName,
        e?.businessUnit,
        e?.createdTime,
        e?.displayName,
        e?.level,
        e?.phoneNumber,
        e?.strategicBusinessUnit,
        e?.uid,
        e?.positionTitle,
        e?.corporateServiceUnit,
        e?.sbuId,
        e?.testUser,
        e?.participantUser,
        e?.qrCodeImageLink,
        e?.qrCodeImageLinkString
      ]);

  @override
  bool isValidKey(Object? o) => o is PreregisteredUsersRecord;
}
