import 'package:flutter/material.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/custom_tetxformfield.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/customslider.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/onhover_container.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/onhover_text.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/out_best_offers.dart';
import 'package:tech_cscommunity/views/screens/home_screen/widgets/shift_gradiant_onhover.dart';
import 'package:date_format/date_format.dart';
import 'package:intl/intl.dart';
import '../../../constants/constants.dart';
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
  DateTime selectedTravelDate = DateTime.now();
  DateTime selectedCaptureDate = DateTime.now();
  DateTime selectedDate = DateTime.now();
  TextEditingController _traveldateController = TextEditingController();
  TextEditingController _captureDateController = TextEditingController();
  TextEditingController _DateController = TextEditingController();

  Future<Null> _selectTravelDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedTravelDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedTravelDate = picked;
        _traveldateController.text = DateFormat.yMd().format(selectedTravelDate);
      });
  }
  Future<Null> _captureDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedCaptureDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(2015),
        lastDate: DateTime(2101));
    if (picked != null)
      setState(() {
        selectedCaptureDate = picked;
        _captureDateController.text = DateFormat.yMd().format(selectedCaptureDate);
      });
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
    _traveldateController = TextEditingController();
    _traveldateController.text = 'Travel Date';
    _captureDateController = TextEditingController();
    _captureDateController.text = 'Capture Date';
    _DateController = TextEditingController();
    _DateController.text = 'Capture Date';
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
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
                      child: Text('Contact :',
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
                              duration: const Duration(seconds: 1),
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
                              duration: const Duration(seconds: 1),
                              child: const Text(
                                'ABOUT US',
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
                              duration: const Duration(seconds: 1),
                              child: const Text(
                                'OUR SERVICES',
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
                              duration: const Duration(seconds: 1),
                              child: const Text(
                                'WHY HARISTRAVELS',
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
                              duration: const Duration(seconds: 1),
                              child: const Text(
                                'CONTACT US',
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
          Expanded(
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
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    ourBestOfferContainer(height, width),
                    SizedBox(
                      height: height * .05,
                    ),
                    const Center(
                      child: Text(
                        'Our best offers',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: height * .05,
                    ),
                    ourBestOfferContainer(height, width),
                    SizedBox(
                      height: height * .10,
                    ),
                    const Center(
                      child: Text(
                        'Ask Us',
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      height: height * .07,
                    ),
                    Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTextFormField(

                              hintText: 'Your Name',
                              width: width * .30,
                              height: 60,
                            ),
                            SizedBox(width: width*.01,),
                            CustomTextFormField(
                              hintText: 'Your Contact #',
                              width: width * .30,
                              height: 60,
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * .07,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTextFormField(
                              height: 60,
                              hintText: 'Email address',
                              width: width * .30,
                            ),
                            SizedBox(width: width*.01,),
                            CustomTextFormField(
                              height: 60,
                              hintText: 'Your City',
                              width: width * .30,
                            )
                          ],
                        ),
                        SizedBox(
                          height: height * .07,
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
                                  hint: Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 5),
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
                                      child: Text(
                                        e!,
                                        style: TextStyle(
                                          fontStyle: FontStyle.italic,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                          letterSpacing: 0.5,
                                        ),
                                      ),
                                      value:
                                          e, // Ensure each item has a unique value
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
                                  dropdownColor: Colors.grey,
                                  iconEnabledColor: Colors.white,
                                ),
                              ),
                            ),
                            SizedBox(width: width*.01,),
                            InkWell(
                              onTap: () {
                                _selectTravelDate(context);
                              },
                              child: SizedBox(
                                height: 60,
                                width: width*.30,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey)
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey)
                                      ),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF9531b7)))
                                  ),
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.center,
                                  enabled: false,
                                  keyboardType: TextInputType.text,
                                  controller: _traveldateController,
                                  onSaved: ( val) {
                                    _setTravelDate = val!;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * .07,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(width: width*.01,),
                            InkWell(
                              onTap: () {
                                _captureDate(context);
                              },
                              child: SizedBox(
                                height: 60,
                                width: width*.30,
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey)
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey)
                                      ),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF9531b7)))
                                  ),
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.center,
                                  enabled: false,
                                  keyboardType: TextInputType.text,
                                  controller: _captureDateController,
                                  onSaved: ( val) {
                                    _setCaptureDate = val!;
                                  },
                                ),
                              ),
                            ),
                            SizedBox(width: width*.01,),
                            InkWell(
                              onTap: () {
                                _selectDate(context);
                              },
                              child: SizedBox(
                                height: 60,
                                width: width*.30,
                                child: TextFormField(
                                  decoration: const InputDecoration(
                                      enabledBorder: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey)
                                      ),
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(color: Colors.grey)
                                      ),
                                      focusedBorder: OutlineInputBorder(borderSide: BorderSide(color: Color(0xFF9531b7)))
                                  ),
                                  style: TextStyle(fontSize: 16),
                                  textAlign: TextAlign.center,
                                  enabled: false,
                                  keyboardType: TextInputType.text,
                                  controller: _DateController,
                                  onSaved: ( val) {
                                    _setDate = val!;
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: height * .07,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CustomTextFormField(
                              height: 60,
                              hintText: 'Number of Persons(Adults)',
                              width: width * .20,
                            ),
                            SizedBox(width: width*.01,),
                            CustomTextFormField(
                              height: 60,
                              hintText: 'Number of Child (Age: 2-12)',
                              width: width * .20,
                            ),
                            SizedBox(width: width*.01,),
                            CustomTextFormField(
                              height: 60,
                              hintText: 'Number of Infact (Under 2 year)',
                              width: width * .20,
                            )
                          ],
                        ),
                        SizedBox(height: height*.07,),
                        CustomTextFormField(
                          hintText: 'REMARKS)',
                          width: width *.62,
                          maxLine: 5,
                        ),
                        SizedBox(height: height*.07,),
                        GradientOnHoverButton(
                          duration: Duration(milliseconds: 1000),
                           defaultGradient: [
                             Color(0xff7819d3),
                             Color(0xffe00fc3),
                           ],
                           hoverGradient: [
                             Color(0xFFe00fc3),
                             Color(0xFF7819d3),
                           ],
                           child: Container(
                             height: height*.09,
                             width: width*.15,
                             child: Center(child: Text('Submit',style: TextStyle(color: Colors.white,fontSize: 16),),),
                           ),
                         ),
                        SizedBox(height: height*.07,),
                      ],
                    )
                  ],
                ),
              ))
        ],
      ),
    );
  }
}


