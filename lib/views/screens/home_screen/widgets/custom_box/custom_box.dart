import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tech_cscommunity/constants/constants.dart';

import '../custom_tetxformfield.dart';
import '../shift_gradiant_onhover.dart';

class CustomDialogBox extends StatefulWidget {
  final String title, descriptions, text;

  const CustomDialogBox(
      {Key? key,
      required this.title,
      required this.descriptions,
      required this.text})
      : super(key: key);

  @override
  _CustomDialogBoxState createState() => _CustomDialogBoxState();
}

class _CustomDialogBoxState extends State<CustomDialogBox>{


  String? selectRoll;
  List listRoll = [
    'Inquiry Type',
    'Umrah Package',
    'Corporate Tours',
    'Air Ticketing',
    'Hotel Bokings',
    'Holidays packages',
    'Group Tours',
    'Visa Services'
  ];
  String? _setTravelDate = 'Travel Date';
  String? _setDate = 'Travel Date';
  String? _setCaptureDate = 'Travel Date';
  String? _setDepartureDate = 'Departure Date';
  String? _setArrivalDate = 'Departure Date';
  DateTime selectedArrivalDate = DateTime.now();
  DateTime selectedTravelDate = DateTime.now();
  DateTime selectedDepartureDate = DateTime.now();
  DateTime selectedCaptureDate = DateTime.now();
  DateTime selectedDate = DateTime.now();
  TextEditingController _traveldateController = TextEditingController();
  TextEditingController _captureDateController = TextEditingController();
  TextEditingController _departureDateController = TextEditingController();
  TextEditingController _arrivalDateController = TextEditingController();
  TextEditingController? _emailController;
  TextEditingController? _ContactController;
  TextEditingController? _nameController;

  TextEditingController? _cityController;
  TextEditingController? _numberOfPersonController;
  TextEditingController? _numberOfChildController;
  TextEditingController? _numberOfInfactController;

  TextEditingController? _remarksController;
  TextEditingController _DateController = TextEditingController();

  Future<Null> _selectArrivalDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedArrivalDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null) {
      setState(() {
        selectedArrivalDate = picked;
        _arrivalDateController.text =
            DateFormat.yMd().format(selectedArrivalDate);
      });
    }
  }

  Future<Null> _selectDepartureDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDepartureDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null) {
      setState(() {
        selectedDepartureDate = picked;
        _departureDateController.text =
            DateFormat.yMd().format(selectedDepartureDate);
      });
    }
  }

  Future<Null> _selectTravelDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedTravelDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null) {
      setState(() {
        selectedTravelDate = picked;
        _traveldateController.text =
            DateFormat.yMd().format(selectedTravelDate);
      });
    }
  }

  Future<Null> _captureDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedCaptureDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null) {
      setState(() {
        selectedCaptureDate = picked;
        _captureDateController.text =
            DateFormat.yMd().format(selectedCaptureDate);
      });
    }
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedDate = picked;
        _DateController.text = DateFormat.yMd().format(selectedDate);
      });
  }

  @override
  void initState() {
    _remarksController = TextEditingController();
    _numberOfInfactController = TextEditingController();
    _numberOfChildController = TextEditingController();
    _numberOfPersonController = TextEditingController();
    _cityController = TextEditingController();
    _nameController = TextEditingController();
    _ContactController = TextEditingController();
    _emailController = TextEditingController();
    _traveldateController = TextEditingController();
    _traveldateController.text = 'Travel Date';
    _captureDateController = TextEditingController();
    _captureDateController.text = 'Capture Date';
    _DateController = TextEditingController();
    _DateController.text = 'Capture Date';
    _departureDateController = TextEditingController();
    _arrivalDateController = TextEditingController();
    _arrivalDateController.text = 'Arrival Date';
    _departureDateController.text = 'Departure Date';

    super.initState();
  }
  @override
  void dispose() {

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      elevation: 0,
      backgroundColor: Colors.transparent,
      child: contentBox(context),
    );
  }

  contentBox(context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
            height: height * .87,
            width: width * .58,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.6),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Container(
                height: height * .80,
                width: width * .55,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12)
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            FadeInUp(
                              duration: Duration(milliseconds: 400),
                              delay: Duration(milliseconds: 400),
                              child: Text(
                                'Ask Us',
                                style: TextStyle(
                                    fontFamily: 'Chusion',
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: FadeInUp(
                                duration: Duration(milliseconds: 400),
                                delay: Duration(milliseconds: 400),
                                child: CustomTextFormField(
                                  textColor: Colors.black,
                                  borderRadius: BorderRadius.circular(0),
                                  hintText: Text('Your Name'),
                                  width: width * .30,
                                  height: 60,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: FadeInUp(
                                duration: Duration(milliseconds: 400),
                                delay: Duration(milliseconds: 400),
                                child: CustomTextFormField(
                                  textColor: Colors.black,
                                  borderRadius: BorderRadius.circular(0),
                                  hintText: Text('Your Contact #'),
                                  width: width * .30,
                                  height: 60,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: FadeInUp(
                                duration: Duration(milliseconds: 400),
                                delay: Duration(milliseconds: 400),
                                child: CustomTextFormField(
                                  textColor: Colors.black,
                                  borderRadius: BorderRadius.circular(0),
                                  hintText: Text('Email address'),
                                  width: width * .30,
                                  height: 60,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: FadeInUp(
                                duration: Duration(milliseconds: 400),
                                delay: Duration(milliseconds: 400),
                                child: CustomTextFormField(
                                  textColor: Colors.black,
                                  borderRadius: BorderRadius.circular(0),
                                  hintText: Text('Your Destination'),
                                  width: width * .30,
                                  height: 60,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            InkWell(
                              onTap: () {
                                _selectTravelDate(context);
                              },
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: FadeInUp(
                                  duration: Duration(milliseconds: 400),
                                  delay: Duration(milliseconds: 400),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade500),
                                        borderRadius: BorderRadius.circular(0)),
                                    height: 50,
                                    width: width * .30,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: _traveldateController.text,
                                          enabledBorder: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(0)),
                                          border: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(0)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide:
                                                  BorderSide(color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(0))),
                                      style: const TextStyle(
                                          fontSize: 16, color: Colors.black),
                                      enabled: false,
                                      keyboardType: TextInputType.text,
                                      controller: _traveldateController,
                                      onSaved: (val) {
                                        _setTravelDate = val!;
                                      },
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: FadeInUp(
                                duration: Duration(milliseconds: 400),
                                delay: Duration(milliseconds: 400),
                                child: CustomTextFormField(
                                  textColor: Colors.black,
                                  borderRadius: BorderRadius.circular(0),
                                  hintText: Text('Comments'),
                                  width: width * .30,
                                  height: 60,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            GestureDetector(
                              onTap: (){
                                Navigator.pop(context);
                              },
                              child: FadeInUp(
                                duration: Duration(milliseconds: 400),
                                delay: Duration(milliseconds: 400),
                                child: GradientOnHoverButton(
                                  duration: const Duration(milliseconds: 1000),
                                  defaultGradient: const [
                                    Color(0xff7819d3),
                                    Color(0xffe00fc3),
                                  ],
                                  hoverGradient: const [
                                    Color(0xFFe00fc3),
                                    Color(0xFF7819d3),
                                  ],
                                  child: Container(
                                    height: height * .07,
                                    width: width * .15,
                                    child: const Center(
                                      child: Text(
                                        'Submit',
                                        style: TextStyle(
                                            fontFamily: 'Chusion',
                                            color: Colors.white,
                                            fontSize: 16),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 50,),
                    Expanded(
                      child: Container(
                        color: Colors.transparent,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            FadeInDown(
                              duration: Duration(milliseconds: 400),
                              delay: Duration(milliseconds: 400),
                              child: Text(
                                'Neque porro quisquam est qui dolorem ',
                                style: TextStyle(
                                    fontFamily: 'Spookrd',
                                    color: Constants.whight,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,),
                              ),
                            ),
                            const SizedBox(height: 20,),
                             Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: FadeInUp(
                                duration: Duration(milliseconds: 400),
                                delay: Duration(milliseconds: 400),
                                child: const Text(
                                'Lto suscipit, quis fringilla urna molestie. Suspendisse'
                                    '  suscipit, quis fringilla urna molestie. Suspendisse'
                                    ' id ultrices odio.',style: TextStyle(color: Colors.white),),
                              ),
                            ),
                            SizedBox(
                              height: 30,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
        Positioned(
            top: 5,
            right: 5,
            child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(
                Icons.close_rounded,
                color: Constants.whight,
              ),
            ))
      ],
    );
  }
}
