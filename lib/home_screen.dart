import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String initialCountry = 'US';
  PhoneNumber number = PhoneNumber(isoCode: 'US');
  bool syncContacts = false; // Initial value for sync contacts toggle

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {
                // Implement your next functionality here
              },
              child: const Text(
                'Next',
                style: TextStyle(
                  color: Color.fromARGB(255, 129, 193, 230),
                  fontSize: 18,
                ),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                // Implement your cancel functionality here
              },
              child: const Text(
                'Cancel',
                style: TextStyle(
                  color: Color.fromARGB(255, 17, 198, 204),
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 16.0, left: 16.0),
            child: Center(
              child: Text(
                'Your phone',
                style: TextStyle(fontSize: 30, color: Colors.black),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: Center(
              child: Text(
                'Please confirm your country code and enter your phone number',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0, left: 16.0, right: 16.0),
            child: InternationalPhoneNumberInput(
              onInputChanged: (PhoneNumber number) {
                // Handle phone number change
              },
              selectorConfig: const SelectorConfig(
                selectorType: PhoneInputSelectorType.DROPDOWN,
              ),
              initialValue: number,
              textFieldController: TextEditingController(),
              inputDecoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter your phone number',
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Sync contacts', style: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w400))
                ,
                const SizedBox(width: 200),
                Switch(
                  value: syncContacts,
                  onChanged: (value) {
                    setState(() {
                      syncContacts = value;
                    });
                  },
                  activeColor: Colors.green, // Color when switch is on
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
