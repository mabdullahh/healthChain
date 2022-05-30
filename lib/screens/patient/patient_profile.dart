import 'package:flutter/material.dart';


import '../../utilities/constants.dart';
import '../../widgets/input_container.dart';
class PatientWalletScreen extends StatelessWidget {
  const PatientWalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).cardColor.withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: const [
                      Icon(
                        Icons.wallet_outlined,
                        color: kPrimaryColor,
                      ),
                      Text(
                        'Wallet',
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Public Key',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const InputContainer(
                      child: Text(
                        '0xFF893787432802n9038908n902t80',
                      )),
                  const Text(
                    'Private Key',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const InputContainer(
                    child: Text(
                      '0xFF893787432802n9038908n902n80',
                    ),
                  ),
                  const Text(
                    'Balance',
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                    ),

                  ),

                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text('0.1 ETH'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
