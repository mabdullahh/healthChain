import 'package:flutter/material.dart';
import 'package:health_chain/model/patient_lab_report_model.dart';

import '../../widgets/patient/patient_lab_report_tile_widget.dart';
class PatientLabReportScreen extends StatelessWidget {
  const PatientLabReportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lab Reports'),
      ),
      body: PatientLabReportTile(labReports: labData),
    );
  }
}
