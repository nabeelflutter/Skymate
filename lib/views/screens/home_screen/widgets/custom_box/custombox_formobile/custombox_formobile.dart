import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:tech_cscommunity/constants/constants.dart';

import '../../custom_tetxformfield.dart';
import '../../shift_gradiant_onhover.dart';


class CustomDialogBoxForMobile extends StatefulWidget {
  final String title, descriptions, text;

  const CustomDialogBoxForMobile(
      {Key? key,
        required this.title,
        required this.descriptions,
        required this.text})
      : super(key: key);

  @override
  _CustomDialogBoxForMobileState createState() => _CustomDialogBoxForMobileState();
}

class _CustomDialogBoxForMobileState extends State<CustomDialogBoxForMobile>{


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
            height: height * .75,
            width: width * .80,
            decoration: BoxDecoration(
              color: Colors.black.withOpacity(.6),
              shape: BoxShape.rectangle,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: SizedBox(
                height: height * .70,
                width: width * .70,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        height: height*.70,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(12)
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Center(
                                child: Padding(
                                  padding: EdgeInsets.only(top: 30,left: 10,right: 10),
                                  child: Text(
                                    'Neque porro quisquam est qui dolorem ',
                                    style: TextStyle(
                                      fontFamily: 'Spookrd',
                                      color: Colors.black,
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              const Text(
                                'Ask Us',
                                style: TextStyle(
                                    fontFamily: 'Chusion',
                                    color: Colors.black,
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                                child: SizedBox(
                                  height: 40,
                                  child: CustomTextFormField(
                                    textColor: Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                    hintText: const Text('Your Name'),
                                    width: width * .65,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                                child: SizedBox(
                                  height: 40,
                                  child: CustomTextFormField(
                                    textColor: Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                    hintText: const Text('Your Contact #'),
                                    width: width * .65,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                                child: SizedBox(
                                  height: 40,
                                  child: CustomTextFormField(
                                    textColor: Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                    hintText: const Text('Your address'),
                                    width: width * .65,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                                child: SizedBox(
                                  height: 40,
                                  child: CustomTextFormField(
                                    textColor: Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                    hintText: const Text('Your Destination'),
                                    width: width * .65,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 7,
                              ),
                              InkWell(
                                onTap: () {
                                  _selectTravelDate(context);
                                },
                                child: Padding(
                                  padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            color: Colors.grey.shade500),
                                        borderRadius: BorderRadius.circular(8)),
                                    height: 40,
                                    width: width * .65,
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          hintText: _traveldateController.text,
                                          enabledBorder: OutlineInputBorder(
                                              borderSide:
                                              const BorderSide(color: Colors.grey),
                                              borderRadius:
                                              BorderRadius.circular(0)),
                                          border: OutlineInputBorder(
                                              borderSide:
                                              const BorderSide(color: Colors.grey),
                                              borderRadius:
                                              BorderRadius.circular(0)),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide:
                                              const BorderSide(color: Colors.grey),
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
                              const SizedBox(
                                height: 7,
                              ),
                              Padding(
                                padding:
                                const EdgeInsets.symmetric(horizontal: 10),
                                child: SizedBox(
                                  height: 40,
                                  child: CustomTextFormField(
                                    textColor: Colors.black,
                                    borderRadius: BorderRadius.circular(8),
                                    hintText: const Text('Comments'),
                                    width: width * .65,
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
                                  duration: const Duration(milliseconds: 400),
                                  delay: const Duration(milliseconds: 400),
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
                                      height: height * .04,
                                      width: width * .30,
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
                              const SizedBox(height: 10,),
                              Padding(
                           padding: const EdgeInsets.only(left: 20),
                                child: FadeInUp(
                                  duration: const Duration(milliseconds: 400),
                                  delay: const Duration(milliseconds: 400),
                                  child: const Text(
                                    'Lto suscipit, quis fringilla urna molestie. Suspendisse'
                                        '  suscipit, quis fringilla urna molestie. Suspendisse'
                                        ' id ultrices odio.',style: TextStyle(fontSize: 12,color: Colors.black),),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )),
        Positioned(
            top: 0,
            right: 0,
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
