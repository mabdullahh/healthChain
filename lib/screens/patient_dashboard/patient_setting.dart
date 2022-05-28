import 'package:flutter/material.dart';
import 'package:health_chain/constants.dart';

class PatientSetting extends StatelessWidget {
  const PatientSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      body: Center(
        child: GestureDetector(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
            decoration: BoxDecoration(
              color: kPrimaryColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Exit Dashboard',style: TextStyle(color: Colors.white,fontSize: 18),),
                  SizedBox(width: 10,),
                  Icon(Icons.logout_outlined,color: Colors.white,),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
