import 'package:flutter/material.dart';

import '../../model/patient_lab_report_model.dart';

class PatientLabReportTile extends StatelessWidget {
  const PatientLabReportTile({Key? key, required this.labReports})
      : super(key: key);
  final List<PatientLabReportModel> labReports;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: labReports.length,
      physics: const BouncingScrollPhysics(),
      shrinkWrap: true,
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      itemBuilder: (BuildContext context, int index) {
        final PatientLabReportModel item = labReports[index];
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.50,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            decoration: BoxDecoration(
              color: Theme.of(context).cardColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Report',
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge!
                      .copyWith(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Pulse'),
                    Text(item.pulse),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Blood Pressure'),
                    Text(item.bp),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Temperature'),
                    Text(item.temp),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Blood Test'),
                    Text(item.bloodTest),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Urine Test'),
                    Text(item.urineTest),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Ecg'),
                    Text(item.ecg),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('MRI'),
                    Text(item.mriScan),
                  ],
                ),
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text('Other'),
                    Text(item.other),
                  ],
                ),

              ],
            ),
          ),
        );
      },
    );
  }
}
