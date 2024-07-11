// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DatesStruct extends BaseStruct {
  DatesStruct({
    DateTime? startDate,
    DateTime? endDate,
  })  : _startDate = startDate,
        _endDate = endDate;

  // "startDate" field.
  DateTime? _startDate;
  DateTime? get startDate => _startDate;
  set startDate(DateTime? val) => _startDate = val;

  bool hasStartDate() => _startDate != null;

  // "endDate" field.
  DateTime? _endDate;
  DateTime? get endDate => _endDate;
  set endDate(DateTime? val) => _endDate = val;

  bool hasEndDate() => _endDate != null;

  static DatesStruct fromMap(Map<String, dynamic> data) => DatesStruct(
        startDate: data['startDate'] as DateTime?,
        endDate: data['endDate'] as DateTime?,
      );

  static DatesStruct? maybeFromMap(dynamic data) =>
      data is Map ? DatesStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'startDate': _startDate,
        'endDate': _endDate,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'startDate': serializeParam(
          _startDate,
          ParamType.DateTime,
        ),
        'endDate': serializeParam(
          _endDate,
          ParamType.DateTime,
        ),
      }.withoutNulls;

  static DatesStruct fromSerializableMap(Map<String, dynamic> data) =>
      DatesStruct(
        startDate: deserializeParam(
          data['startDate'],
          ParamType.DateTime,
          false,
        ),
        endDate: deserializeParam(
          data['endDate'],
          ParamType.DateTime,
          false,
        ),
      );

  @override
  String toString() => 'DatesStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is DatesStruct &&
        startDate == other.startDate &&
        endDate == other.endDate;
  }

  @override
  int get hashCode => const ListEquality().hash([startDate, endDate]);
}

DatesStruct createDatesStruct({
  DateTime? startDate,
  DateTime? endDate,
}) =>
    DatesStruct(
      startDate: startDate,
      endDate: endDate,
    );
