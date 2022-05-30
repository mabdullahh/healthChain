class PatientLabReportModel{
  final String pulse;
  final String bp;
  final String temp;
  final String bloodTest;
  final String urineTest;
  final String ecg;
  final String mriScan;
  final String other;

  PatientLabReportModel({required this.pulse, required this.bp, required this.temp, required this.bloodTest,
    required this.urineTest, required this.ecg, required this.mriScan, required this.other});
}
List<PatientLabReportModel> labData = [
  PatientLabReportModel(pulse: '112 BPM', bp: 'Normal', temp: '78\u2103 C', bloodTest: 'Positive', urineTest: 'Not available', ecg: 'No record', mriScan: 'No record', other: 'No record'),
  PatientLabReportModel(pulse: '113 BPM', bp: 'Normal', temp: '79\u2103 C', bloodTest: 'Negative', urineTest: 'Not available', ecg: 'No record', mriScan: 'No record', other: 'No record'),
  PatientLabReportModel(pulse: '114 BPM', bp: 'Normal', temp: '88\u2103 C', bloodTest: 'Positive', urineTest: 'Not available', ecg: 'No record', mriScan: 'No record', other: 'No record'),
  PatientLabReportModel(pulse: '115 BPM', bp: 'Normal', temp: '98\u2103 C', bloodTest: 'Positive', urineTest: 'Not available', ecg: 'No record', mriScan: 'No record', other: 'No record'),
  PatientLabReportModel(pulse: '116 BPM', bp: 'High', temp: '98\u2103 C', bloodTest: 'Positive', urineTest: 'Not available', ecg: 'No record', mriScan: 'No record', other: 'No record'),
  PatientLabReportModel(pulse: '117 BPM', bp: 'High', temp: '79\u2103 C', bloodTest: 'Negative', urineTest: 'Not available', ecg: 'No record', mriScan: 'No record', other: 'No record'),
];
