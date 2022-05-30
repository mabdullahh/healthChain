class PatientHistoryModel{
  final String date;
  final String disease;
  final String symptoms;
  final String prescription;
  final String instruction;

  PatientHistoryModel({required this.date, required this.disease, required this.symptoms, required this.prescription,
    required this.instruction});
}


List<PatientHistoryModel> history = [
  PatientHistoryModel(date: '21-01-2022', disease: 'Cough', symptoms: 'Chest infection', prescription: 'x Tablet', instruction: 'bed rest'),
  PatientHistoryModel(date: '21-02-2021', disease: 'Flu', symptoms: 'Chest infection', prescription: 'y Tablet', instruction: 'Lab test'),
  PatientHistoryModel(date: '21-03-2020', disease: 'Corona', symptoms: 'Chest infection', prescription: 'z Tablet', instruction: 'Ventilator'),
  PatientHistoryModel(date: '21-04-2019', disease: 'Corona 2.0', symptoms: 'Chest infection', prescription: '1 Tablet', instruction: 'Quarantine'),
  PatientHistoryModel(date: '21-05-2018', disease: 'Chest infection', symptoms: 'Chest infection', prescription: '2 Tablet', instruction: 'bed rest'),
  PatientHistoryModel(date: '21-06-2017', disease: 'Unidentified', symptoms: 'Chest infection', prescription: '3 Tablet', instruction: 'bed rest'),
];