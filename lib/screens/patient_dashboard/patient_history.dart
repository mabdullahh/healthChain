import 'package:flutter/material.dart';
import 'package:health_chain/model/patient_history_model.dart';

import '../../widgets/history_tile_widget.dart';
class PatientHistory extends StatelessWidget {
  const PatientHistory({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('History'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 20,),
              Text('Patient\'s history',style: Theme.of(context).textTheme.titleLarge,),
              HistoryTileWidget(historyList: history),
            ],
          ),
        ),
      ),
    );
  }
}
