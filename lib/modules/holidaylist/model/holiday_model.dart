class HolidayModel {
  String? date;
  String? name;

  HolidayModel(this.date, this.name);
}

List<HolidayModel> holidaylist = [
  HolidayModel('February 5, 2024', 'Kashmir Day'),
  HolidayModel('March 23, 2024', 'Pakistan Day'),
  HolidayModel('April 10, 11, 12, 2024', 'Eid-ul-Fitr Holidays'),
  HolidayModel('May 1, 2024', 'Labour Day'),
  HolidayModel('June 17 to 19, 2024', 'Eid-ul-Azha Holidays'),
  HolidayModel('July 17, 2024', 'Muharram Holidays for Ashura'),
  HolidayModel(
    'August 14, 2024',
    'Independence Day',
  ),
  HolidayModel(
    'September 16, 2024',
    'Eid Miladun Nabi (PBUH)',
  ),
  HolidayModel(
    'November 9, 2024',
    'Iqbal Day',
  ),
  HolidayModel(
    'December 25, 2024',
    "Quaid Azam's Birthday",
  ),
  HolidayModel(
    'February 25, 2024',
    "Shab-e-Barat",
  ),
];
