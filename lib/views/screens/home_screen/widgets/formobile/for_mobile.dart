import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

import '../../../../../constants/constants.dart';
import '../TextWithHoverContainer.dart';
import '../custom_box/custombox_formobile/show_boxfor_mobile.dart';
import '../custom_tetxformfield.dart';
import '../mydrawer/my_drawer.dart';
import '../onhover_color_changebutton.dart';
import '../onhover_container.dart';
import '../onhovertext_show_progressindicator.dart';
import '../shift_gradiant_onhover.dart';
import '../stageredanimation/stagered_animation.dart';

class ForMobileDesignHomePage extends StatefulWidget {
  const ForMobileDesignHomePage({super.key});

  @override
  State<ForMobileDesignHomePage> createState() =>
      _ForMobileDesignHomePageState();
}

class _ForMobileDesignHomePageState extends State<ForMobileDesignHomePage> {
  bool homeHoverer = false;
  bool aboutHoverer = false;
  bool contactHoverer = false;
  bool servicesHoverer = false;
  bool travelHoverer = false;
  String? selectRoll;
  String? selectDepartureCity;
  String? selectArrivalCity;
  List<String> imageList = [
    'assets/images/1.png',
    'assets/images/2.png',
    'assets/images/3.png',
    'assets/images/4.png',
    'assets/images/5.png',
    'assets/images/6.png'
  ];
  List<String> titleList = [
    'Air Ticketing',
    'Hotel Bookings',
    'Umrah Services',
    'Holiday / Group Tours',
    'Visa Services',
    'Corporate'
  ];
  List<String> subTitleList = [
    'Hassle-free bookings and competitive fares for domestic and international flights.',
    'Handpicked accommodations worldwide with exceptional service.',
    'Tailored packages for a spiritually enriching pilgrimage experience.',
    'Captivating itineraries and unforgettable experiences with fellow travelers.',
    'Streamlined visa services for a smooth travel experience.',
    'Elevate your business travel with seamless logistics and curated experiences.'
  ];

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
    return Scaffold(
      drawer: myDrawer(),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            actions: [
              const Text('AITA'),
              const SizedBox(
                width: 20,
              ),
            ],
            centerTitle: true,
            backgroundColor: Colors.white,
            title: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Image.asset(
                  'assets/images/img.png',
                  scale: 5,
                )),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  height: height * .30,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/im.jpg'),
                          fit: BoxFit.fill)),
                  child: Center(
                    child: SizedBox(
                      height: 100,
                      width: width * .70,
                      child: Container(
                        height: height * .50,
                        width: width * .70,
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(.5),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'The net work that gets you',
                                style: TextStyle(
                                    fontFamily: 'Chusion',
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Constants.whight),
                              ),
                              Text(
                                'In publishing and graphic design',
                                style: TextStyle(
                                    fontFamily: 'Chusion',
                                    fontSize: 12,
                                    color: Constants.whight),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: height * .05,
                ),
                const Center(
                  child: Text(
                    'Grab the best offer',
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
                  padding: const EdgeInsets.symmetric(horizontal: 12),
                  child: CustomTextFormField(
                    borderRadius: BorderRadius.circular(10),
                    hintText: const Text('Your Name'),
                    maxLine: 1,
                    width: width * 70,
                    height: 50,
                  ),
                ),
                SizedBox(
                  height: height * .02,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 5),
                  child: CustomTextFormField(
                    maxLine: 1,
                    borderRadius: BorderRadius.circular(10),
                    hintText: const Text('Email or phone'),
                    width: width * 70,
                    height: 50,
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                      height: 50,
                      width: width,
                      child: DropdownButton(
                        hint: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            'City of departure',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        value: selectDepartureCity,
                        // Set the default value
                        icon: const Icon(Icons.arrow_drop_down,
                            color: Colors.black),
                        items: cityOfDepartureList.map((e) {
                          return DropdownMenuItem(
                            value: e,
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
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
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
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: SizedBox(
                      height: 50,
                      width: width,
                      child: DropdownButton(
                        hint: const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Text(
                            ' City of Arrival',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        value: selectArrivalCity,
                        // Set the default value
                        icon: const Icon(Icons.arrow_drop_down,
                            color: Colors.black),
                        items: cityOfArrivalList.map((e) {
                          return DropdownMenuItem(
                            value: e,
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
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
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
                  child: GestureDetector(
                    onTap: () {
                      _selectDepartureDate(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade500),
                          borderRadius: BorderRadius.circular(8)),
                      height: 50,
                      width: width,
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText:
                                  _departureDateController.text.toString(),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                          textAlign: TextAlign.left,
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
                ),
                SizedBox(
                  height: height * .02,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: GestureDetector(
                    onTap: () {
                      _selectArrivalDate(context);
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade500),
                          borderRadius: BorderRadius.circular(8)),
                      height: 50,
                      width: width,
                      child: Center(
                        child: TextFormField(
                          decoration: InputDecoration(
                              hintText: _arrivalDateController.text.toString(),
                              enabledBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              border: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey)),
                              focusedBorder: const OutlineInputBorder(
                                  borderSide: BorderSide(color: Colors.grey))),
                          style: const TextStyle(
                              fontSize: 16, color: Colors.black),
                          textAlign: TextAlign.left,
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
                ),
                const SizedBox(
                  height: 25,
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
                    height: 40,
                    width: 150,
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
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Center(
                child: Text(
                  'Our best offers',
                  style: TextStyle(
                      fontFamily: 'Chusion',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              child: GestureDetector(
                onTap: () async {
                  await GeneralDialogsForMobile.showLoginDialogue(context);
                },
                child: CardWithShadowOnHover(
                  child: Container(
                    height: 300,
                    decoration: BoxDecoration(color: Colors.white, boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 3,
                          blurRadius: 10,
                          offset: const Offset(0, 3))
                    ]),
                    child: Column(
                      children: [
                        Container(
                          height: 200,
                          decoration: const BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('assets/images/du.jpg'),
                                  fit: BoxFit.fill)),
                        ),
                        const Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            Text('UNITED ARAB EMIRATES'),
                            Text(
                              'Dubai',
                              style: TextStyle(
                                  fontFamily: 'Chusion',
                                  fontWeight: FontWeight.bold),
                            ),
                            Text('Book Economy class'),
                            Text(
                              'fron USD 234',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }, childCount: 3)),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  'Our best offers',
                  style: TextStyle(
                      fontFamily: 'Chusion',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  height: height * .25,
                  width: width * 40,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(
                      'assets/images/c2.jpg',
                    ),
                    fit: BoxFit.fill,
                  )),
                  child: Container(
                    // height: height * .20,
                    width: width,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.7),
                      gradient: LinearGradient(
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.2)
                        ],
                        begin: Alignment.bottomRight,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          'Title',
                          style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Constants.whight),
                        ),
                        Text(
                          'Subtitle',
                          style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                              color: Constants.whight),
                        ),
                        SizedBox(
                          height: height * .05,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }, childCount: 4)),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Center(
                child: Text(
                  'Our best offers',
                  style: TextStyle(
                      fontFamily: 'Chusion',
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
              child: CardWithShadowOnHover(
                child: Card(
                  child: Container(
                    height: height * .30,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(4),
                        image: const DecorationImage(
                            image: AssetImage('assets/images/g2.jpg'),
                            fit: BoxFit.fill)),
                    child: const Column(
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, top: 10),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Create your Dubai experence',
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Chusion',
                                fontSize: 25,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Learn more',
                              style: TextStyle(
                                color: Colors.black,
                                fontFamily: 'Chusion',
                                fontSize: 14,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            );
          }, childCount: 5)),
          SliverToBoxAdapter(
            child: Column(
              children: [
                SizedBox(
                  height: height * .08,
                ),
                const Center(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40),
                    child: Text(
                      'Your trip is 100% Tailored to your needs',
                      style: TextStyle(
                          fontFamily: 'Chusion',
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(imageList[index]),
                const SizedBox(
                  height: 10,
                ),
                TextWithHoverProgressIndicator(
                  containerColor: const Color(0xffd2af6d),
                  text: titleList[index],
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: 200,
                  child:  Center(
                    child: Padding(
                      padding: EdgeInsets.only(left: 15),
                      child: Text(
                        subTitleList[index],
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 13,
                            fontFamily: 'Chusion'),
                      ),
                    ),
                  ),
                )
              ],
            );
          }, childCount: 6)),

          SliverToBoxAdapter(
            child: Column(
              children: [
                const SizedBox(
                  height: 25,
                ),
                Container(
                  width: width,
                  color: const Color(0xff333333),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'Save with our latest fares and offers.',
                          style: TextStyle(color: Color(0xffbcc1c5)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 5),
                        child: TextWithHoverContainer(
                          text: 'Unsubscribe or change your preferences',
                          containerColor:
                              Colors.grey.withOpacity(0.5), // Container color
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: Container(
                          height: 40,
                          width: width,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(2),
                            color: Constants.whight,
                          ),
                          child: const Padding(
                            padding: EdgeInsets.only(left: 20),
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Email address',
                                style: TextStyle(fontSize: 16),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        child: HoverColorAndTextColorButton(
                          width: width,
                          text: 'Subscibe',
                          defaultButtonColor: const Color(0xff333333),
                          // Default button color
                          hoverButtonColor: Constants.whight,
                          // Hover button color
                          defaultTextColor: Constants.whight,
                          // Default text color
                          hoverTextColor: Colors.black,
                          // Hover text color
                          duration: const Duration(
                              milliseconds: 300), // Animation duration
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10),
                        child: Text(
                          'For details on how we use your information, please see our',
                          style: TextStyle(color: Color(0xffbcc1c5)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 30),
                        child: Text(
                          'Book and manage your flights on the go.',
                          style: TextStyle(color: Color(0xffbcc1c5)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SvgPicture.asset('assets/images/app.svg'),
                            const SizedBox(
                              width: 10,
                            ),
                            SvgPicture.asset('assets/images/play.svg'),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Padding(
                        padding: EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          'Share your Emirates experience.',
                          style: TextStyle(color: Color(0xffbcc1c5)),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Card(
                                elevation: 0,
                                child: Image.asset(
                                  'assets/images/facebook (1).png',
                                  scale: 14,
                                )),
                            const SizedBox(
                              width: 1,
                            ),
                            Card(
                                child: Image.asset(
                              'assets/images/twitter-sign.png',
                              scale: 14,
                            )),
                            const SizedBox(
                              width: 1,
                            ),
                            Card(
                                child: Image.asset(
                              'assets/images/youtube.png',
                              scale: 14,
                            )),
                            const SizedBox(
                              width: 1,
                            ),
                            Card(
                                child: Image.asset(
                              'assets/images/instagram.png',
                              scale: 14,
                            )),
                            const SizedBox(
                              width: 1,
                            ),
                            Card(
                                child: Image.asset(
                              'assets/images/twitter-sign.png',
                              scale: 14,
                            )),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Container(
                                height: 100,
                                width: 100,
                                child: SvgPicture.asset(
                                  'assets/images/fi1.svg',
                                )),
                            Container(
                                height: 100,
                                width: 100,
                                child: SvgPicture.asset(
                                  'assets/images/sec.svg',
                                )),
                            Container(
                                height: 100,
                                width: 100,
                                child: SvgPicture.asset(
                                  'assets/images/thir.svg',
                                )),
                          ],
                        ),
                      ),
                      const Divider()
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
