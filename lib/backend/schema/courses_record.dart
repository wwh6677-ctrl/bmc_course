import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CoursesRecord extends FirestoreRecord {
  CoursesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "course_name" field.
  String? _courseName;
  String get courseName => _courseName ?? '';
  bool hasCourseName() => _courseName != null;

  // "course_image" field.
  String? _courseImage;
  String get courseImage => _courseImage ?? '';
  bool hasCourseImage() => _courseImage != null;

  // "course_code" field.
  String? _courseCode;
  String get courseCode => _courseCode ?? '';
  bool hasCourseCode() => _courseCode != null;

  // "student" field.
  List<DocumentReference>? _student;
  List<DocumentReference> get student => _student ?? const [];
  bool hasStudent() => _student != null;

  void _initializeFields() {
    _courseName = snapshotData['course_name'] as String?;
    _courseImage = snapshotData['course_image'] as String?;
    _courseCode = snapshotData['course_code'] as String?;
    _student = getDataList(snapshotData['student']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('courses');

  static Stream<CoursesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CoursesRecord.fromSnapshot(s));

  static Future<CoursesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CoursesRecord.fromSnapshot(s));

  static CoursesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CoursesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CoursesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CoursesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CoursesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CoursesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCoursesRecordData({
  String? courseName,
  String? courseImage,
  String? courseCode,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'course_name': courseName,
      'course_image': courseImage,
      'course_code': courseCode,
    }.withoutNulls,
  );

  return firestoreData;
}

class CoursesRecordDocumentEquality implements Equality<CoursesRecord> {
  const CoursesRecordDocumentEquality();

  @override
  bool equals(CoursesRecord? e1, CoursesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.courseName == e2?.courseName &&
        e1?.courseImage == e2?.courseImage &&
        e1?.courseCode == e2?.courseCode &&
        listEquality.equals(e1?.student, e2?.student);
  }

  @override
  int hash(CoursesRecord? e) => const ListEquality()
      .hash([e?.courseName, e?.courseImage, e?.courseCode, e?.student]);

  @override
  bool isValidKey(Object? o) => o is CoursesRecord;
}
