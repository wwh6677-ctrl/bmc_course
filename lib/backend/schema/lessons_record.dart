import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LessonsRecord extends FirestoreRecord {
  LessonsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "lesson_name" field.
  String? _lessonName;
  String get lessonName => _lessonName ?? '';
  bool hasLessonName() => _lessonName != null;

  // "video_id" field.
  String? _videoId;
  String get videoId => _videoId ?? '';
  bool hasVideoId() => _videoId != null;

  // "course_ref" field.
  DocumentReference? _courseRef;
  DocumentReference? get courseRef => _courseRef;
  bool hasCourseRef() => _courseRef != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  // "video_url" field.
  String? _videoUrl;
  String get videoUrl => _videoUrl ?? '';
  bool hasVideoUrl() => _videoUrl != null;

  void _initializeFields() {
    _lessonName = snapshotData['lesson_name'] as String?;
    _videoId = snapshotData['video_id'] as String?;
    _courseRef = snapshotData['course_ref'] as DocumentReference?;
    _order = castToType<int>(snapshotData['order']);
    _videoUrl = snapshotData['video_url'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lessons');

  static Stream<LessonsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LessonsRecord.fromSnapshot(s));

  static Future<LessonsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LessonsRecord.fromSnapshot(s));

  static LessonsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LessonsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LessonsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LessonsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LessonsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LessonsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLessonsRecordData({
  String? lessonName,
  String? videoId,
  DocumentReference? courseRef,
  int? order,
  String? videoUrl,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'lesson_name': lessonName,
      'video_id': videoId,
      'course_ref': courseRef,
      'order': order,
      'video_url': videoUrl,
    }.withoutNulls,
  );

  return firestoreData;
}

class LessonsRecordDocumentEquality implements Equality<LessonsRecord> {
  const LessonsRecordDocumentEquality();

  @override
  bool equals(LessonsRecord? e1, LessonsRecord? e2) {
    return e1?.lessonName == e2?.lessonName &&
        e1?.videoId == e2?.videoId &&
        e1?.courseRef == e2?.courseRef &&
        e1?.order == e2?.order &&
        e1?.videoUrl == e2?.videoUrl;
  }

  @override
  int hash(LessonsRecord? e) => const ListEquality()
      .hash([e?.lessonName, e?.videoId, e?.courseRef, e?.order, e?.videoUrl]);

  @override
  bool isValidKey(Object? o) => o is LessonsRecord;
}
