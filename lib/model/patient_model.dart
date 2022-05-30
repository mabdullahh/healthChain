class PatientModel {
  final String name;
  final String email;
  final String phone;
  final String gender;
  final String cnic;
  final String dob;

  PatientModel(
      {required this.name,
      required this.email,
      required this.phone,
      required this.gender,
      required this.cnic,
      required this.dob});
}

PatientModel patientData = PatientModel(name: 'Muhammad Abdullah', email: 'mabdullah@gamil.com', phone: '0312-3456789', gender: 'Male', cnic: '37406016434343', dob: '21-May-1999');
