import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "first_name" field.
  String? _firstName;
  String get firstName => _firstName ?? '';
  bool hasFirstName() => _firstName != null;

  // "last_name" field.
  String? _lastName;
  String get lastName => _lastName ?? '';
  bool hasLastName() => _lastName != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  // "work_email" field.
  String? _workEmail;
  String get workEmail => _workEmail ?? '';
  bool hasWorkEmail() => _workEmail != null;

  // "business_unit" field.
  String? _businessUnit;
  String get businessUnit => _businessUnit ?? '';
  bool hasBusinessUnit() => _businessUnit != null;

  // "position_title" field.
  String? _positionTitle;
  String get positionTitle => _positionTitle ?? '';
  bool hasPositionTitle() => _positionTitle != null;

  // "level" field.
  String? _level;
  String get level => _level ?? '';
  bool hasLevel() => _level != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "strategic_business_unit" field.
  String? _strategicBusinessUnit;
  String get strategicBusinessUnit => _strategicBusinessUnit ?? '';
  bool hasStrategicBusinessUnit() => _strategicBusinessUnit != null;

  // "corporate_service_unit" field.
  String? _corporateServiceUnit;
  String get corporateServiceUnit => _corporateServiceUnit ?? '';
  bool hasCorporateServiceUnit() => _corporateServiceUnit != null;

  // "test_user" field.
  bool? _testUser;
  bool get testUser => _testUser ?? false;
  bool hasTestUser() => _testUser != null;

  // "qr_code_image_link" field.
  String? _qrCodeImageLink;
  String get qrCodeImageLink => _qrCodeImageLink ?? '';
  bool hasQrCodeImageLink() => _qrCodeImageLink != null;

  // "qr_code_image_link_string" field.
  String? _qrCodeImageLinkString;
  String get qrCodeImageLinkString => _qrCodeImageLinkString ?? '';
  bool hasQrCodeImageLinkString() => _qrCodeImageLinkString != null;

  void _initializeFields() {
    _firstName = snapshotData['first_name'] as String?;
    _lastName = snapshotData['last_name'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _uid = snapshotData['uid'] as String?;
    _workEmail = snapshotData['work_email'] as String?;
    _businessUnit = snapshotData['business_unit'] as String?;
    _positionTitle = snapshotData['position_title'] as String?;
    _level = snapshotData['level'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _strategicBusinessUnit = snapshotData['strategic_business_unit'] as String?;
    _corporateServiceUnit = snapshotData['corporate_service_unit'] as String?;
    _testUser = snapshotData['test_user'] as bool?;
    _qrCodeImageLink = snapshotData['qr_code_image_link'] as String?;
    _qrCodeImageLinkString =
        snapshotData['qr_code_image_link_string'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? firstName,
  String? lastName,
  String? phoneNumber,
  DateTime? createdTime,
  String? uid,
  String? workEmail,
  String? businessUnit,
  String? positionTitle,
  String? level,
  String? displayName,
  String? photoUrl,
  String? strategicBusinessUnit,
  String? corporateServiceUnit,
  bool? testUser,
  String? qrCodeImageLink,
  String? qrCodeImageLinkString,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'first_name': firstName,
      'last_name': lastName,
      'phone_number': phoneNumber,
      'created_time': createdTime,
      'uid': uid,
      'work_email': workEmail,
      'business_unit': businessUnit,
      'position_title': positionTitle,
      'level': level,
      'display_name': displayName,
      'photo_url': photoUrl,
      'strategic_business_unit': strategicBusinessUnit,
      'corporate_service_unit': corporateServiceUnit,
      'test_user': testUser,
      'qr_code_image_link': qrCodeImageLink,
      'qr_code_image_link_string': qrCodeImageLinkString,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.firstName == e2?.firstName &&
        e1?.lastName == e2?.lastName &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.createdTime == e2?.createdTime &&
        e1?.uid == e2?.uid &&
        e1?.workEmail == e2?.workEmail &&
        e1?.businessUnit == e2?.businessUnit &&
        e1?.positionTitle == e2?.positionTitle &&
        e1?.level == e2?.level &&
        e1?.displayName == e2?.displayName &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.strategicBusinessUnit == e2?.strategicBusinessUnit &&
        e1?.corporateServiceUnit == e2?.corporateServiceUnit &&
        e1?.testUser == e2?.testUser &&
        e1?.qrCodeImageLink == e2?.qrCodeImageLink &&
        e1?.qrCodeImageLinkString == e2?.qrCodeImageLinkString;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.firstName,
        e?.lastName,
        e?.phoneNumber,
        e?.createdTime,
        e?.uid,
        e?.workEmail,
        e?.businessUnit,
        e?.positionTitle,
        e?.level,
        e?.displayName,
        e?.photoUrl,
        e?.strategicBusinessUnit,
        e?.corporateServiceUnit,
        e?.testUser,
        e?.qrCodeImageLink,
        e?.qrCodeImageLinkString
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
