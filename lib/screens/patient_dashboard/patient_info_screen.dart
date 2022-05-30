import 'package:flutter/material.dart';
import 'package:health_chain/model/patient_model.dart';

class PatientInfoScreen extends StatelessWidget {
  const PatientInfoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Patient info'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Container(
          height: MediaQuery.of(context).size.height * 0.40,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            color: Theme.of(context).cardColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Name',style: Theme.of(context).textTheme.titleLarge,),
                Text(patientData.name),
                const SizedBox(height: 10,),
                Text('Email',style: Theme.of(context).textTheme.titleLarge,),
                Text(patientData.email),
                const SizedBox(height: 10,),
                Text('Phone',style: Theme.of(context).textTheme.titleLarge,),
                Text(patientData.phone),
                const SizedBox(height: 10,),
                Text('Gender',style: Theme.of(context).textTheme.titleLarge,),
                Text(patientData.gender),
                const SizedBox(height: 10,),
                Text('CNIC',style: Theme.of(context).textTheme.titleLarge,),
                Text(patientData.cnic),
                const SizedBox(height: 10,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
