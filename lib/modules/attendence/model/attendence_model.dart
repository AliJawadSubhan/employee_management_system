class AttendanceModel {
  String? date;
  String? day;
  String? detail;
  String? checkin;
  String? checkout;
  String? wrkingHrs;
  String? status;
  String? reason;

  AttendanceModel(this.date, this.day, this.detail, this.checkin, this.checkout,
      this.wrkingHrs, this.status, this.reason);
}

List<AttendanceModel> attendenceList = [
  AttendanceModel('2024-01-16', 'Tue', 'Hassaan Ahmed', '03:14 PM', '11:14 PM',
      '07:59:47', 'Present', ''),
  AttendanceModel('2024-01-17', 'Wed', 'Hassaan Ahmed', '03:14 PM', '11:14 PM',
      '07:59:47', 'Present', ''),
  AttendanceModel('2024-01-18', 'Thu', 'Hassaan Ahmed', '03:14 PM', '11:14 PM',
      '07:59:47', 'Present', ''),
  AttendanceModel('2024-01-19', 'Fri', 'Hassaan Ahmed', '03:14 PM', '11:14 PM',
      '07:59:47', 'Present', ''),
  AttendanceModel('2024-01-20', 'Sat', 'Hassaan Ahmed', '03:14 PM', '11:14 PM',
      '07:59:47', 'Present', ''),
  AttendanceModel('2024-01-21', 'Mon', 'Hassaan Ahmed', '03:14 PM', '11:14 PM',
      '07:59:47', 'Present', ''),
  AttendanceModel('2024-01-22', 'Tue', 'Hassaan Ahmed', '03:14 PM', '11:14 PM',
      '07:59:47', 'Present', ''),
  AttendanceModel('2024-01-23', 'Wed', 'Hassaan Ahmed', '03:14 PM', '11:14 PM',
      '07:59:47', 'Present', ''),
];
