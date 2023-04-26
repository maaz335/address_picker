import 'package:flutter/material.dart';
import 'package:country_state_city_picker/country_state_city_picker.dart';
import 'package:csc_picker/csc_picker.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String? countryValue;
  String? stateValue;
  String? cityValue;
  String? address;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body:  SafeArea(
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CSCPicker(
                  layout: Layout.vertical,

                  ///Enable disable state dropdown [OPTIONAL PARAMETER]
                  showStates: true,

                  /// Enable disable city drop down [OPTIONAL PARAMETER]
                  showCities: true,

                  ///Enable (get flag with country name) / Disable (Disable flag) / ShowInDropdownOnly (display flag in dropdown only) [OPTIONAL PARAMETER]
                  flagState: CountryFlag.ENABLE,

                  ///Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER] (USE with disabledDropdownDecoration)
                  dropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.white,
                      border:
                      Border.all(color: Colors.grey.shade300, width: 1)),

                  ///Disabled Dropdown box decoration to style your dropdown selector [OPTIONAL PARAMETER]  (USE with disabled dropdownDecoration)
                  disabledDropdownDecoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                      color: Colors.grey.shade300,
                      border:
                      Border.all(color: Colors.grey.shade300, width: 1)),

                  ///placeholders for dropdown search field
                  countrySearchPlaceholder: "Country",
                  stateSearchPlaceholder: "State",
                  citySearchPlaceholder: "City",

                  ///labels for dropdown
                  countryDropdownLabel: "Country",
                  stateDropdownLabel: "State",
                  cityDropdownLabel: "City",

                  ///Default Country
                  ///defaultCountry: CscCountry.India,

                  ///Country Filter [OPTIONAL PARAMETER]
                  countryFilter: [CscCountry.India,CscCountry.United_States,CscCountry.Canada],

                  ///Disable country dropdown (Note: use it with default country)
                  //disableCountry: true,

                  ///selected item style [OPTIONAL PARAMETER]
                  selectedItemStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),

                  ///DropdownDialog Heading style [OPTIONAL PARAMETER]
                  dropdownHeadingStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 17,
                      fontWeight: FontWeight.bold),

                  ///DropdownDialog Item style [OPTIONAL PARAMETER]
                  dropdownItemStyle: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                  ),

                  ///Dialog box radius [OPTIONAL PARAMETER]
                  dropdownDialogRadius: 10.0,

                  ///Search bar radius [OPTIONAL PARAMETER]
                  searchBarRadius: 100.0,

                  ///triggers once country selected in dropdown
                  onCountryChanged: (value) {
                    setState(() {
                      ///store value in country variable
                      countryValue = value;
                    });
                  },

                  ///triggers once state selected in dropdown
                  onStateChanged: (value) {
                    setState(() {
                      ///store value in state variable
                      stateValue = value;
                    });
                  },

                  ///triggers once city selected in dropdown
                  onCityChanged: (value) {
                    setState(() {
                      ///store value in city variable
                      cityValue = value;
                    });
                  },

                  ///Show only specific countries using country filter
                  // countryFilter: ["United States", "Canada", "Mexico"],
                ),

                SizedBox(
                  width: MediaQuery.of(context).size.height*0.4,
                  child: ElevatedButton(onPressed: (){}, child: Text('Continue'),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,foregroundColor: Colors.black,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100),),
                  ),

                  ),
                ),

              ],
            )
        ),
      ),
    );
  }
}