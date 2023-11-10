import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/TextWithHoverContainer.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/custom_tetxformfield.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/customslider.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/flotingaction_buttons/floting_action_button.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/footer.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/formobile/for_mobile.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/onhover_color_changebutton.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/onhover_container.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/onhover_text.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/onhovertext_show_progressindicator.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/out_best_offers.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/out_bestoffer_section1.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/shift_gradiant_onhover.dart';
import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/stageredanimation/stagered_animation.dart';
import '../../../constants/constants.dart';
import '../../../main.dart';
import '../../../routes/pages.dart';
import '../our_services/our_services_screen.dart';
import '../our_services/services_for_mobile/services_fromobile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ScrollController listScrollController = ScrollController();
  bool isFABVisible = false;
  bool homeHoverer = false;
  bool aboutHoverer = false;
  bool contactHoverer = false;
  bool servicesHoverer = false;
  bool homePage = true;
  bool travelHoverer = false;
  bool isHovered = false;
  bool showBox = false;
  bool ourServicesPage = false;
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
    listScrollController.addListener(() {
      if (listScrollController.offset > 100 && !isFABVisible) {
        setState(() {
          isFABVisible = true;
        });
      } else if (listScrollController.offset <= 100 && isFABVisible) {
        setState(() {
          isFABVisible = false;
        });
      }
    });
    super.initState();
  }
  @override
  void dispose() {
    // Dispose of the ScrollController to avoid memory leaks
    listScrollController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    if(homePage == false && width < 1000){
      return ForMobileDesignServicesScreen();
    }
    return width < 1000
        ? const ForMobileDesignHomePage()
        : Scaffold(
            body: Stack(
              children: [
                Column(
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
                                    style: TextStyle(
                                        color: Constants.whight, fontSize: 16)),
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
                            padding: const EdgeInsets.only(left:25),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ClipRRect(
                                    borderRadius: BorderRadius.circular(50),
                                    child: Image.asset(
                                      'assets/images/img.png',
                                    )),
                                Padding(
                                  padding: const EdgeInsets.only(right: 25),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      GestureDetector(
                                        onTap:(){
                                          setState(() {
                                            ourServicesPage = false;
                                            homePage = true;
                                          });
                                        },
                                        child: HoverTextColorChanger(
                                          defaultColor:homePage?Colors.blue: Colors.black,
                                          hoverColor: Colors.blue,
                                          duration:
                                              const Duration(microseconds: 500),
                                          child: const Text(
                                            'Home',
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      HoverTextColorChanger(
                                        defaultColor: Colors.black,
                                        hoverColor: Colors.blue,
                                        duration:
                                            const Duration(microseconds: 500),
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
                                      GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            ourServicesPage = true;
                                            homePage = false;
                                          });
                                        },
                                        child: HoverTextColorChanger(
                                          defaultColor:ourServicesPage? Colors.blue:Colors.black,
                                          hoverColor: Colors.blue,
                                          duration:
                                              const Duration(microseconds: 500),
                                          child: const Text(
                                            'Our Services',
                                            style: TextStyle(
                                              fontSize: 14,
                                            ),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      HoverTextColorChanger(
                                        defaultColor: Colors.black,
                                        hoverColor: Colors.blue,
                                        duration:
                                            const Duration(microseconds: 500),
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
                    ourServicesPage ? Flexible(child: SingleChildScrollView(
                      controller: listScrollController,
                      child: OurServicesScreen()
                    )):Flexible(
                      child: SingleChildScrollView(
                        controller: listScrollController,
                        child: Column(
                          children: [
                            ManuallyControlledSlider(),
                            SizedBox(
                              height: height * .05,
                            ),
                            const Center(
                              child: Text(
                                'Our best offers',
                                style: TextStyle(
                                    fontFamily: 'Chusion',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: height * .05,
                            ),
                            ourBestOfferSectionOne(context),
                            SizedBox(
                              height: height * .07,
                            ),
                            const Center(
                              child: Text(
                                'Our best offers',
                                style: TextStyle(
                                    fontFamily: 'Chusion',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            ourBestOfferContainer(height, width,context),
                            const Center(
                              child: Text(
                                'Our best offers',
                                style: TextStyle(
                                    fontFamily: 'Chusion',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: height * .05,
                            ),
                            const StaggeredGridViewScreen(),
                            SizedBox(
                              height: height *.08,
                            ),
                            const Center(
                              child: Text(
                                'Your trip is 100% Tailored to your needs',
                                style: TextStyle(
                                    fontFamily: 'Chusion',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: height * .05,
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 200),
                              child: Container(
                                height: height*.70,
                                width: width,
                                color: Colors.white54,
                               // padding: EdgeInsets.symmetric(horizontal: 150),
                                child:  Center(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Image.asset('assets/images/1.png'),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              TextWithHoverProgressIndicator(
                                                containerColor: const Color(0xffd2af6d),
                                                text: 'Air Ticketing',
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                             Container(
                                               width: 200,
                                               child: const Center(child:  Padding(
                                                 padding: EdgeInsets.only(left: 15),
                                                 child: Text(
                                                   'Hassle-free bookings and competitive fares for domestic and international flights.',
                                                   style: TextStyle(
                                                       color: Colors.black,
                                                       fontSize: 13,
                                                       fontFamily: 'Chusion'),
                                                 ),
                                               ),),
                                             )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Image.asset('assets/images/2.png'),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              TextWithHoverProgressIndicator(
                                                containerColor: const Color(0xffd2af6d),
                                                text: 'Hotel Bookings',
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const SizedBox(
                                                  width: 200,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(left: 15),
                                                    child: Text(
                                                      'Handpicked accommodations worldwide with exceptional service.',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 13,
                                                          fontFamily: 'Chusion'),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Image.asset('assets/images/3.png'),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              TextWithHoverProgressIndicator(
                                                containerColor: const Color(0xffd2af6d),
                                                text: 'Umrah Services',
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const SizedBox(
                                                  width: 200,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(left: 25),
                                                    child: Text(
                                                      'Tailored packages for a spiritually enriching pilgrimage experience.',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 13,
                                                          fontFamily: 'Chusion'),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Column(
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Image.asset('assets/images/4.png'),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              TextWithHoverProgressIndicator(
                                                containerColor: const Color(0xffd2af6d),
                                                text: 'Air Ticketing',
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Container(
                                                width: 200,
                                                child: const Center(child:  Padding(
                                                  padding: EdgeInsets.only(left: 15),
                                                  child: Text(
                                                    'Captivating itineraries and unforgettable experiences with fellow travelers.',
                                                    style: TextStyle(
                                                        color: Colors.black,
                                                        fontSize: 13,
                                                        fontFamily: 'Chusion'),
                                                  ),
                                                ),),
                                              )
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Image.asset('assets/images/5.png'),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              TextWithHoverProgressIndicator(
                                                containerColor: const Color(0xffd2af6d),
                                                text: 'Hotel Bookings',
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const SizedBox(
                                                  width: 200,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(left: 15),
                                                    child: Text(
                                                      'Streamlined visa services for a smooth travel experience..',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 13,
                                                          fontFamily: 'Chusion'),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                          Column(
                                            children: [
                                              Image.asset('assets/images/6.png'),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              TextWithHoverProgressIndicator(
                                                containerColor: const Color(0xffd2af6d),
                                                text: 'Umrah Services',
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              const SizedBox(
                                                  width: 200,
                                                  child: Padding(
                                                    padding: EdgeInsets.only(left: 15),
                                                    child: Text(
                                                      'Elevate your business travel with seamless logistics and curated experiences.',
                                                      style: TextStyle(
                                                          color: Colors.black,
                                                          fontSize: 13,
                                                          fontFamily: 'Chusion'),
                                                    ),
                                                  ))
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            )

                            ,const SizedBox(
                              height: 30,
                            ),
                            const Center(
                              child: Text(
                                'Ask Us',
                                style: TextStyle(
                                    fontFamily: 'Chusion',
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            const SizedBox(
                              height: 35,
                            ),
                            Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomTextFormField(
                                      borderRadius: BorderRadius.circular(0),
                                      hintText: const Text('Your Name'),
                                      width: width * .30,
                                      height: 60,
                                    ),
                                    SizedBox(
                                      width: width * .02,
                                    ),
                                    CustomTextFormField(
                                      borderRadius: BorderRadius.circular(0),
                                      hintText: const Text('Your Contact #'),
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
                                      borderRadius: BorderRadius.circular(0),
                                      height: 60,
                                      hintText: const Text('Email address'),
                                      width: width * .30,
                                    ),
                                    SizedBox(
                                      width: width * .02,
                                    ),
                                    CustomTextFormField(
                                      borderRadius: BorderRadius.circular(0),
                                      height: 60,
                                      hintText: const Text('Your City'),
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
                                        borderRadius: BorderRadius.circular(0),
                                      ),
                                      child: SizedBox(
                                        height: 50,
                                        width: width * .30,
                                        child: DropdownButton(
                                          hint: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5),
                                            child: Text(
                                              'Umrah Package',
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 15,
                                                letterSpacing: 0.5,
                                              ),
                                            ),
                                          ),
                                          value: selectRoll,
                                          // Set the default value
                                          icon: const Icon(Icons.arrow_drop_down,
                                              color: Colors.black),
                                          items: listRoll.map((e) {
                                            return DropdownMenuItem(
                                              value: e,
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
                                              fontSize: 18,
                                              color: Colors.white),
                                          dropdownColor: Colors.white,
                                          iconEnabledColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      width: width * .02,
                                    ),
                                    InkWell(
                                      onTap: () {
                                        _selectTravelDate(context);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey.shade500),
                                            borderRadius:
                                                BorderRadius.circular(0)),
                                        height: 50,
                                        width: width * .30,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(0)),
                                              border: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(0)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0))),
                                          style: const TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
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
                                    InkWell(
                                      onTap: () {
                                        _captureDate(context);
                                      },
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey.shade500),
                                            borderRadius:
                                                BorderRadius.circular(0)),
                                        height: 50,
                                        width: width * .30,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(0)),
                                              border: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(0)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0))),
                                          style: const TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
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
                                      child: Container(
                                        decoration: BoxDecoration(
                                            border: Border.all(
                                                color: Colors.grey.shade500),
                                            borderRadius:
                                                BorderRadius.circular(0)),
                                        height: 50,
                                        width: width * .30,
                                        child: TextFormField(
                                          decoration: InputDecoration(
                                              enabledBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(0)),
                                              border: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(0)),
                                              focusedBorder: OutlineInputBorder(
                                                  borderSide: const BorderSide(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          0))),
                                          style: const TextStyle(
                                              fontSize: 16,
                                              color: Colors.black),
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
                                      borderRadius: BorderRadius.circular(0),
                                      height: 60,
                                      hintText:
                                          const Text('Number of Persons(Adults)'),
                                      width: width * .20,
                                    ),
                                    SizedBox(
                                      width: width * .01,
                                    ),
                                    CustomTextFormField(
                                      borderRadius: BorderRadius.circular(0),
                                      height: 60,
                                      hintText:
                                          const Text('Number of Child (Age: 2-12)'),
                                      width: width * .20,
                                    ),
                                    SizedBox(
                                      width: width * .01,
                                    ),
                                    CustomTextFormField(
                                      borderRadius: BorderRadius.circular(0),
                                      height: 60,
                                      hintText: const Text('Number of Infact'),
                                      width: width * .20,
                                    )
                                  ],
                                ),
                                SizedBox(
                                  height: height * .03,
                                ),
                                CustomTextFormField(
                                  borderRadius: BorderRadius.circular(0),
                                  hintText: const Text('COMMENTS'),
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
                showBox
                    ? Positioned(
                        bottom: height * .20,
                        right: 10,
                        child: Container(
                          height: height * .60,
                          width: width * .20,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(5)),
                          child: Column(
                            children: [
                              ListTile(
                                trailing: Row(

                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    const Icon(Icons.settings),
                                    const SizedBox(width: 10,),
                                    GestureDetector(
                                        onTap: (){
                                          setState(() {
                                            showBox = false;
                                          });
                                        },
                                        child: const Icon(Icons.close_rounded))
                                  ],
                                ),
                                leading: const CircleAvatar(),
                                title: const Text(
                                  'Shehroz',
                                  style: TextStyle(
                                      fontFamily: 'Chusion', fontSize: 13),
                                ),
                                subtitle: const Text('Available',
                                    style: TextStyle(
                                        fontFamily: 'Chusion', fontSize: 11)),
                              ),
                              const Divider(),
                              const SizedBox(height: 20,),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: CustomTextFormField(
                                    hintText: const Text('Full Name'),
                                    borderRadius: BorderRadius.circular(0)),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: CustomTextFormField(
                                    hintText: const Text('Email'),
                                    borderRadius: BorderRadius.circular(0)),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 10, vertical: 5),
                                child: CustomTextFormField(
                                    maxLine: 5,
                                    hintText: const Text('Comments'),
                                    borderRadius: BorderRadius.circular(0)),
                              ),
                              const SizedBox(
                                height: 15,
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    showBox = false;
                                  });
                                },
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
                                    width: width * .10,
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
                              const SizedBox(height: 10,)
                            ],
                          ),
                        ),
                      )
                    : const SizedBox()
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
                      padding: const EdgeInsets.only(left: 35, bottom: 50),
                      child: MyNewFAB(),
                    ),
                    Column(
                      children: [
                        Visibility(
                          visible: isFABVisible,
                          child: FloatingActionButton(
                            onPressed: () {
                              if (listScrollController.hasClients) {
                                final position = listScrollController.position.minScrollExtent;
                                listScrollController.animateTo(
                                  position,
                                  duration: Duration(seconds: 3),
                                  curve: Curves.easeOut,
                                );
                              }
                            },
                            isExtended: true,
                            tooltip: "Scroll to Top",
                            child: Icon(Icons.arrow_upward),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Padding(
                          padding: const EdgeInsets.only(right: 10, bottom: 50),
                          child: MouseRegion(
                            onEnter: (event) {
                              setState(() {
                                isHovered = true;
                              });
                            },
                            onExit: (event) {
                              setState(() {
                                isHovered = false;
                              });
                            },
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                      color: Color(0xFF7819d3),
                                      borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(100),
                                          topRight: Radius.circular(100),
                                          //bottomRight: Radius.circular(5),
                                          bottomLeft: Radius.circular(100))),
                                  child: FloatingActionButton(
                                    elevation: 0,
                                    backgroundColor: const Color(0xFF7819d3),
                                    onPressed: () {
                                      setState(() {
                                        showBox = true;
                                      });
                                    },
                                    child: isHovered
                                        ? Image.asset('assets/images/smile.png',
                                            height: 30,
                                            width: 40,
                                            color: Colors.white)
                                        : Image.asset('assets/images/option.png',
                                            height: 40,
                                            width: 40,
                                            color: Colors.white),
                                  ),
                                ),
                                if (isHovered)
                                  Padding(
                                    padding:
                                        const EdgeInsets.only(right: 70, bottom: 0),
                                    child: Container(
                                      width: 200,
                                      height: 70,
                                      decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(8),
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.grey.withOpacity(0.5),
                                                spreadRadius: 3,
                                                blurRadius: 10,
                                                offset: const Offset(0, 3))
                                          ]),
                                      child: Builder(builder: (context) {
                                        return const Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 10, top: 10),
                                              child: Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Text(
                                                    'Need help?',
                                                    style: TextStyle(
                                                        fontFamily: 'Chusion'),
                                                  )),
                                            ),
                                            Text(
                                              'Chat with our support team.',
                                              style: TextStyle(color: Colors.grey),
                                            )
                                          ],
                                        );
                                      }),
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          );
  }
}
