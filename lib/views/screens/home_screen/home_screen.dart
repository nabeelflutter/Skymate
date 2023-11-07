import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/TextWithHoverContainer.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/custom_tetxformfield.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/customslider.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/flotingaction_buttons/floting_action_button.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/footer.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/onhover_color_changebutton.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/onhover_container.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/onhover_text.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/out_best_offers.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/out_bestoffer_section1.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/shift_gradiant_onhover.dart';
import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/stageredanimation/stagered_animation.dart';
import '../../../constants/constants.dart';
import '../../../main.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool homeHoverer = false;
  bool aboutHoverer = false;
  bool contactHoverer = false;
  bool servicesHoverer = false;
  bool travelHoverer = false;
  String? selectRoll;
  String? selectDepartureCity;
  String? selectArrivalCity;
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
  List cityOfDepartureList = [
    'Lahore',
    'Karachi',
    'Multan',
    'Islamabad',
  ];
  List cityOfArrivalList = [
    'Lahore',
    'Karachi',
    'Multan',
    'Islamabad',
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
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return width < 1000 ?Scaffold(appBar: AppBar(
      actions: [

        Text('AITA'),
        SizedBox(width: 20,),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
      title:  ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            'assets/images/img.png',scale: 5,
          )),
    ),drawer: Drawer(),
    body: SingleChildScrollView(
      child: Column(children: [
        Container(height: height*.30,
        decoration: const BoxDecoration(image: DecorationImage(image: AssetImage('assets/images/im.jpg'),fit: BoxFit.fill)),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('The net work that gets you',style: TextStyle(  fontFamily: 'Chusion',fontSize: 18,fontWeight: FontWeight.bold,color: Constants.whight),),
                  Text('In publishing and graphi to demonstrate',style: TextStyle(  fontFamily: 'Chusion',fontSize: 14,color: Constants.whight),),
                ],
              ),
            ),
        ),
        SizedBox(
          height: height * .05,
        ),
        const Center(
          child: Text(
            'Grab the best offer',
            style:
            TextStyle(
                fontFamily: 'Chusion',
                fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(
          height: height * .05,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: CustomTextFormField(
            hintText: Text('Your Name'),
            width: width *70,
            height: 60,
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 5),
          child: CustomTextFormField(
            hintText: Text('Email or phone'),
            width: width *70,
            height: 60,
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: SizedBox(
              height: 57,
              width: width ,
              child: DropdownButton(
                hint: const Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    'City of departure',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                value: selectDepartureCity,
                // Set the default value
                icon: Icon(Icons.arrow_drop_down,
                    color: Colors.black),
                items: cityOfDepartureList.map((e) {
                  return DropdownMenuItem(
                    value:
                    e,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Text(
                        e!,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,

                          color: Colors.black,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ), // Ensure each item has a unique value
                  );
                }).toList(),
                onChanged: (dynamic value) {
                  setState(() {
                    selectDepartureCity = value!;
                  });
                },
                isExpanded: true,
                underline: Container(),
                style: const TextStyle(
                    fontSize: 18, color: Colors.white),
                dropdownColor: Colors.white,
                iconEnabledColor: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: DecoratedBox(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(5),
            ),
            child: SizedBox(
              height: 57,
              width: width ,
              child: DropdownButton(
                hint: const Padding(
                  padding:
                  EdgeInsets.symmetric(horizontal: 10),
                  child: Text(
                    ' City of Arrival',
                    style: TextStyle(
                      color: Colors.black,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
                value: selectArrivalCity,
                // Set the default value
                icon: Icon(Icons.arrow_drop_down,
                    color: Colors.black),
                items: cityOfArrivalList.map((e) {
                  return DropdownMenuItem(
                    value:
                    e,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10),

                      child: Text(
                        e!,
                        style: const TextStyle(
                          fontStyle: FontStyle.italic,

                          color: Colors.black,
                          letterSpacing: 0.5,
                        ),
                      ),
                    ), // Ensure each item has a unique value
                  );
                }).toList(),
                onChanged: (dynamic value) {
                  setState(() {
                    selectArrivalCity = value!;
                  });
                },
                isExpanded: true,
                underline: Container(),
                style: const TextStyle(
                    fontSize: 18, color: Colors.white),
                dropdownColor: Colors.white,
                iconEnabledColor: Colors.white,
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
        InkWell(
          onTap: () {
            _selectDepartureDate(context);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 60,
              width: width ,
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xFF9531b7)))),
                style: TextStyle(
                    fontSize: 16, color: Colors.black),
                textAlign: TextAlign.center,
                enabled: false,
                keyboardType: TextInputType.text,
                controller: _departureDateController,
                onSaved: (val) {
                  _setDepartureDate = val!;
                },
              ),
            ),
          ),
        ),
        SizedBox(
          height: height * .02,
        ),
        InkWell(
          onTap: () {
            _selectArrivalDate(context);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: SizedBox(
              height: 60,
              width: width ,
              child: TextFormField(
                decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.grey)),
                    border: OutlineInputBorder(
                        borderSide:
                        BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color(0xFF9531b7)))),
                style: TextStyle(
                    fontSize: 16, color: Colors.black),
                textAlign: TextAlign.center,
                enabled: false,
                keyboardType: TextInputType.text,
                controller: _arrivalDateController,
                onSaved: (val) {
                  _setArrivalDate = val!;
                },
              ),
            ),
          ),
        ),
        SizedBox(height: 10,),
        GradientOnHoverButton(
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
            height: height * .09,
            width: 180,
            child: const Center(
              child: Text(
                'Submit',
                style:
                TextStyle(
                    fontFamily: 'Chusion',
                    color: Colors.white, fontSize: 16),
              ),
            ),
          ),
        ),
        SizedBox(height: 25,),
        Container(
          height: height,
          width: width,
          color: Color(0xff333333),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('Save with our latest fares and offers.',style: TextStyle(color: Color(
                    0xffbcc1c5)),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 5),
                child: TextWithHoverContainer(
                  text: 'Unsubscribe or change your preferences',
                  containerColor: Colors.grey.withOpacity(0.5), // Container color
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: Container(height: 40,width: width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Constants.whight,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Email address',style: TextStyle(fontSize: 16),),),
                  ),
                ),
              ),
              SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.only(left: 10,right: 10),
                child: HoverColorAndTextColorButton(
                  width: width,
                  text: 'Subscibe',
                  defaultButtonColor: const Color(0xff333333), // Default button color
                  hoverButtonColor: Constants.whight, // Hover button color
                  defaultTextColor: Constants.whight, // Default text color
                  hoverTextColor: Colors.black, // Hover text color
                  duration: const Duration(milliseconds: 300), // Animation duration
                ),
              ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Text('For details on how we use your information, please see our',style: TextStyle(color: Color(0xffbcc1c5)),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 30),
                child: Text('Book and manage your flights on the go.',style: TextStyle(color: Color(0xffbcc1c5)),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/images/app.svg'),
                    const SizedBox(width: 10,),
                    SvgPicture.asset('assets/images/play.svg'),

                  ],
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Text('Share your Emirates experience.',style: TextStyle(color: Color(0xffbcc1c5)),),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Card(
                        elevation: 0,
                        child: Image.asset('assets/images/facebook (1).png',scale: 14,)),
                    const SizedBox(width: 1,),
                    Card(child: Image.asset('assets/images/twitter-sign.png',scale: 14,)),
                    const SizedBox(width: 1,),
                    Card(child: Image.asset('assets/images/youtube.png',scale: 14,)),
                    const SizedBox(width: 1,),
                    Card(child: Image.asset('assets/images/instagram.png',scale: 14,)),
                    const SizedBox(width: 1,),
                    Card(child: Image.asset('assets/images/twitter-sign.png',scale: 14,)),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(height: 100,width: 100,child: SvgPicture.asset('assets/images/fi1.svg',)),
                    Container(height: 100,width: 100,child: SvgPicture.asset('assets/images/sec.svg',)),
                    Container(height: 100,width: 100,child: SvgPicture.asset('assets/images/thir.svg',)),
                  ],),
              ),
              Divider()
          ],),
        ),
      ],),
    ),
    ):Scaffold(
      body: Column(
        children: [
          Container(
            height: height * .04,
            width: width,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF03a4cb),
                  Color(0xFF03a4cb),
                  Color(0xFF3776c6),
                  Color(0xFF6848bf)
                ],
                // Change these colors as needed
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: width * .15),
              child: Row(
                children: [
                  Container(
                    height: height * .04,
                    width: width * .06,
                    color: const Color(0xFF0081ab),
                    child: Center(
                      child: Text('contact :',
                          style:
                              TextStyle(color: Constants.whight, fontSize: 16)),
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  OnHoverContainer(
                    scale: 1.1,
                    child: Text('abc123@gmail.com',
                        style: TextStyle(
                          fontSize: 13,
                          color: Constants.whight,
                        )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  OnHoverContainer(
                    scale: 1.1,
                    child: Text('020959878483',
                        style: TextStyle(
                          fontSize: 13,
                          color: Constants.whight,
                        )),
                  ),
                ],
              ),
            ),
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                  0), // Set the radius to 0 for rectangular shape
            ),
            elevation: 0,
            child: Container(
                alignment: Alignment.bottomRight,
                color: const Color(0xFFffffff),
                height: height * .08,
                child: Padding(
                  padding: EdgeInsets.only(left: width * .05),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'assets/images/img.png',
                          )),
                      Padding(
                        padding: EdgeInsets.only(right: width * .10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            HoverTextColorChanger(
                              defaultColor: Colors.black,
                              hoverColor: Colors.blue,
                              duration: const Duration(microseconds: 500),
                              child: const Text(
                                'Home',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            HoverTextColorChanger(
                              defaultColor: Colors.black,
                              hoverColor: Colors.blue,
                              duration: const Duration(microseconds: 500),
                              child: const Text(
                                'About Us',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            HoverTextColorChanger(
                              defaultColor: Colors.black,
                              hoverColor: Colors.blue,
                              duration: const Duration(microseconds: 500),
                              child: const Text(
                                'Our Services',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            HoverTextColorChanger(
                              defaultColor: Colors.black,
                              hoverColor: Colors.blue,
                              duration: const Duration(microseconds: 500),
                              child: const Text(
                                'Why Haristravels',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 15,
                            ),
                            HoverTextColorChanger(
                              defaultColor: Colors.black,
                              hoverColor: Colors.blue,
                              duration: const Duration(microseconds: 500),
                              child: const Text(
                                'Contact Us',
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )),
          ),

          Flexible(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  ManuallyControlledSlider(),
                  SizedBox(
                    height: height * .05,
                  ),
                  const Center(
                    child: Text(
                      'Our best offers',
                      style:
                          TextStyle(
                              fontFamily: 'Chusion',
                              fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  ourBestOfferSectionOne(context),
                  SizedBox(
                    height: height * .05,
                  ),
                  const Center(
                    child: Text(
                      'Our best offers',
                      style:
                          TextStyle(
                              fontFamily: 'Chusion',
                              fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),

                  ourBestOfferContainer(height, width),

                  const Center(
                    child: Text(
                      'Our best offers',
                      style:
                      TextStyle(
                          fontFamily: 'Chusion',
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  StaggeredGridViewScreen(),
                  SizedBox(
                    height: height * .05,
                  ),
                  const Center(
                    child: Text(
                      'Ask Us',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: height * .05,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextFormField(
                            hintText: Text('Your Name'),
                            width: width * .30,
                            height: 60,
                          ),
                          SizedBox(
                            width: width * .01,
                          ),
                          CustomTextFormField(
                            hintText: Text('Your Contact #'),
                            width: width * .30,
                            height: 60,
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * .03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextFormField(
                            height: 60,
                            hintText: Text('Email address'),
                            width: width * .30,
                          ),
                          SizedBox(
                            width: width * .01,
                          ),
                          CustomTextFormField(
                            height: 60,
                            hintText: Text('Your City'),
                            width: width * .30,
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * .03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          DecoratedBox(
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: SizedBox(
                              height: 57,
                              width: width * .30,
                              child: DropdownButton(
                                hint: const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 5),
                                  child: Text(
                                    'Umrah Package',
                                    style: TextStyle(
                                      color: Colors.black,
                                      letterSpacing: 0.5,
                                    ),
                                  ),
                                ),
                                value: selectRoll,
                                // Set the default value
                                icon: Icon(Icons.arrow_drop_down,
                                    color: Colors.black),
                                items: listRoll.map((e) {
                                  return DropdownMenuItem(
                                    value:
                                        e,
                                    child: Text(
                                      e!,
                                      style: const TextStyle(
                                        fontStyle: FontStyle.italic,

                                        color: Colors.black,
                                        letterSpacing: 0.5,
                                      ),
                                    ), // Ensure each item has a unique value
                                  );
                                }).toList(),
                                onChanged: (dynamic value) {
                                  setState(() {
                                    selectRoll = value!;
                                  });
                                },
                                isExpanded: true,
                                underline: Container(),
                                style: const TextStyle(
                                    fontSize: 18, color: Colors.white),
                                dropdownColor: Colors.white,
                                iconEnabledColor: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * .01,
                          ),
                          InkWell(
                            onTap: () {
                              _selectTravelDate(context);
                            },
                            child: SizedBox(
                              height: 60,
                              width: width * .30,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF9531b7)))),
                                style: const TextStyle(
                                    fontSize: 16, color: Colors.black),
                                textAlign: TextAlign.center,
                                enabled: false,
                                keyboardType: TextInputType.text,
                                controller: _traveldateController,
                                onSaved: (val) {
                                  _setTravelDate = val!;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: width * .01,
                          ),
                          InkWell(
                            onTap: () {
                              _captureDate(context);
                            },
                            child: SizedBox(
                              height: 60,
                              width: width * .30,
                              child: TextFormField(
                                decoration: InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF9531b7)))),
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                                textAlign: TextAlign.center,
                                enabled: false,
                                keyboardType: TextInputType.text,
                                controller: _captureDateController,
                                onSaved: (val) {
                                  _setCaptureDate = val!;
                                },
                              ),
                            ),
                          ),
                          SizedBox(
                            width: width * .02,
                          ),
                          InkWell(
                            onTap: () {
                              _selectDate(context);
                            },
                            child: SizedBox(
                              height: 60,
                              width: width * .30,
                              child: TextFormField(
                                decoration: const InputDecoration(
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    border: OutlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.grey)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                            color: Color(0xFF9531b7)))),
                                style: TextStyle(
                                    fontSize: 16, color: Colors.black),
                                textAlign: TextAlign.center,
                                enabled: false,
                                keyboardType: TextInputType.text,
                                controller: _DateController,
                                onSaved: (val) {
                                  _setDate = val!;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: height * .03,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomTextFormField(
                            height: 60,
                            hintText:Text( 'Number of Persons(Adults)'),
                            width: width * .20,
                          ),
                          SizedBox(
                            width: width * .01,
                          ),
                          CustomTextFormField(
                            height: 60,
                            hintText: Text('Number of Child (Age: 2-12)'),
                            width: width * .20,
                          ),
                          SizedBox(
                            width: width * .01,
                          ),
                          CustomTextFormField(
                            height: 60,
                            hintText: Text('Number of Infact (Under 2 year)'),
                            width: width * .20,
                          )
                        ],
                      ),
                      SizedBox(
                        height: height * .03,
                      ),
                      CustomTextFormField(
                        hintText: Text('COMMENTS'),
                        width: width * .62,
                        maxLine: 5,
                      ),
                      SizedBox(
                        height: height * .07,
                      ),
                      GradientOnHoverButton(
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
                          height: height * .09,
                          width: width * .15,
                          child: const Center(
                            child: Text(
                              'Submit',
                              style:
                                  TextStyle(
                                      fontFamily: 'Chusion',
                                      color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: height * .07,
                      ),
                    ],
                  ),
                  footer()
                ],
              ),
            ),
          )
        ],
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 35,bottom: 50),
                child: MyNewFAB(),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10,bottom: 50),
                child: MyFAB(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
