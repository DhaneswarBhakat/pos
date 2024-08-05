import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class newCheckOutSell extends StatefulWidget {
  const newCheckOutSell({super.key});

  @override
  State<newCheckOutSell> createState() => _newCheckOutSellState();
}

class _newCheckOutSellState extends State<newCheckOutSell> {
  String _selectedIcon = 'assets/NewIcons/cart.svg';
  bool _isDarkMode = false; // Variable to keep track of dark mode
  bool _openRegister = false;

  @override
  void initState() {
    super.initState();
    _selectedIcon = 'assets/NewIcons/cart.svg'; // Set initial selected icon
  }

  void _onIconTap(String assetPath) {
    setState(() {
      _selectedIcon = assetPath;
    });
    print('$assetPath icon tapped');
    // Add navigation or other logic here
  }

  void _toggleDarkMode() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  void openRegister() {
    setState(() {
      _openRegister = !_openRegister;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _isDarkMode ? const Color(0xFF1C1D1F) : Colors.white,
      body: Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: 80,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: _isDarkMode
                        ? const Color(0xFF212224)
                        : const Color(0xFF2196F3),
                    border: Border(
                      left: BorderSide(
                        color: Colors.black.withOpacity(0.11999999731779099),
                      ),
                      top: BorderSide(
                        color: Colors.black.withOpacity(0.11999999731779099),
                      ),
                      right: BorderSide(
                        width: 1,
                        color: Colors.black.withOpacity(0.11999999731779099),
                      ),
                      bottom: BorderSide(
                        color: Colors.black.withOpacity(0.11999999731779099),
                      ),
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 6,
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 15, right: 16, left: 16),
                        child: ElevatedButton(
                          onPressed: _toggleDarkMode,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors
                                .transparent, // Make the button background transparent
                            shadowColor:
                                Colors.transparent, // Remove the button shadow
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 40,
                            height: 40,
                            child: SvgPicture.asset(
                              _isDarkMode
                                  ? 'assets/NewIcons/darklight1.svg'
                                  : 'assets/NewIcons/darklight.svg', // Path to your logo asset
                              height: 40,
                              width: 40,
                              alignment: Alignment.topCenter,
                            ),
                          ),
                        ),
                      ),
                      const Spacer(
                        flex: 2,
                      ),
                      _buildIconContainer(0, 'assets/NewIcons/cart.svg'),
                      const SizedBox(
                        height: 10,
                      ),
                      _buildIconContainer(1, 'assets/NewIcons/register.svg'),
                      const SizedBox(
                        height: 10,
                      ),
                      _buildIconContainer(2, 'assets/NewIcons/history.svg'),
                      const SizedBox(
                        height: 10,
                      ),
                      _buildIconContainer(3, 'assets/NewIcons/setting.svg'),
                      const Spacer(
                        flex: 3,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: ShapeDecoration(
                          shape: RoundedRectangleBorder(
                            side:
                                const BorderSide(width: 1, color: Colors.white),
                            borderRadius: BorderRadius.circular(8),
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            '3',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              height: 0.09,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8)),
                        child: Image.asset(
                          'assets/Profile/profile1.jpg', // Replace with your SVG URL
                          // height: 40,
                          // width: 40,
                          fit: BoxFit.fill,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 15, right: 16, left: 16),
                        child: Container(
                          width: 40,
                          height: 40,
                          padding: const EdgeInsets.all(8),
                          child: SvgPicture.asset(
                            _isDarkMode
                                ? 'assets/NewIcons/logout1.svg'
                                : 'assets/NewIcons/logout.svg', // Path to your logo asset
                            height: 40,
                            width: 40,
                            alignment: Alignment.topCenter,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
          Expanded(
            flex: 7,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, bottom: 8.0, left: 12, right: 12),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(top: 16, bottom: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 320,
                          height: 40,
                          decoration: ShapeDecoration(
                            shape: RoundedRectangleBorder(
                              side: BorderSide(
                                width: 1,
                                color: _isDarkMode
                                    ? Colors.white
                                        .withOpacity(0.23999999463558197)
                                    : Colors.black
                                        .withOpacity(0.11999999731779099),
                              ),
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 12),
                                child: _isDarkMode
                                    ? SvgPicture.asset(
                                        'assets/NewIcons/search1.svg',
                                        height: 20,
                                        width: 20,
                                        alignment: Alignment.topCenter,
                                      )
                                    : SvgPicture.asset(
                                        'assets/NewIcons/search.svg',
                                        height: 20,
                                        width: 20,
                                        alignment: Alignment.topCenter,
                                      ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Start typing or scanning',
                                style: TextStyle(
                                  color: _isDarkMode
                                      ? Colors.white
                                          .withOpacity(0.23999999463558197)
                                      : Colors.black
                                          .withOpacity(0.11999999731779099),
                                  fontSize: 14,
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                  height: 0,
                                ),
                              ),
                            ],
                          ),
                        ),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors
                                .transparent, // Make the button background transparent
                            shadowColor:
                                Colors.transparent, // Remove the button shadow
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 120,
                            height: 48,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 24, vertical: 8),
                            decoration: ShapeDecoration(
                              color: _openRegister && _isDarkMode
                                  ? Colors.white
                                  : _openRegister && !_isDarkMode
                                      ? const Color(0x142196F3)
                                      : _isDarkMode
                                          ? Colors.white
                                              .withOpacity(0.23999999463558197)
                                          : Colors.black
                                              .withOpacity(0.11999999731779099),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8)),
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  'More Actions',
                                  style: TextStyle(
                                    color: _openRegister && !_isDarkMode
                                        ? const Color(0xFF2196F3)
                                        : _isDarkMode
                                            ? const Color(0xFF161313)
                                            : Colors.black.withOpacity(
                                                0.11999999731779099),
                                    fontSize: 12,
                                    fontFamily: 'Roboto',
                                    fontWeight: FontWeight.w500,
                                    height: 0.11,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      //padding: const EdgeInsets.only(top: 20, bottom: 20, left: 250, right: 250),
                      decoration: ShapeDecoration(
                        color: _isDarkMode
                            ? const Color(0xFF212324)
                            : Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color:
                                Colors.black.withOpacity(0.11999999731779099),
                          ),
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Padding(
                            padding: const EdgeInsets.only(
                                top: 20.0, bottom: 20.0, left: 10, right: 10),
                            child: _openRegister
                                ? Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(top: 8.0),
                                        child: Text(
                                          'SALE DETAILS',
                                          style: TextStyle(
                                            color: _isDarkMode
                                                ? Colors.white
                                                : Colors.black,
                                            fontSize: 14,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w500,
                                            height: 0.12,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 25,
                                      ),
                                      Container(
                                        height: 56,
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 16, vertical: 8),
                                        clipBehavior: Clip.antiAlias,
                                        decoration: ShapeDecoration(
                                          color: _isDarkMode
                                              ? const Color(0xFF28292B)
                                              : const Color(0x0A2196F3),
                                          shape: RoundedRectangleBorder(
                                            side: const BorderSide(
                                                width: 1,
                                                color: Color(0x1E2196F3)),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Added items information will be displayed here.',
                                              style: TextStyle(
                                                color: _isDarkMode
                                                    ? Colors.white.withOpacity(
                                                        0.5600000023841858)
                                                    : const Color(0xFF2196F3),
                                                fontSize: 12,
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400,
                                                height: 0.11,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      const Spacer(),
                                      Container(
                                        padding: const EdgeInsets.only(
                                            left: 8,
                                            right: 8,
                                            top: 15,
                                            bottom: 15),
                                        decoration: ShapeDecoration(
                                          color: _isDarkMode
                                              ? const Color(0xFF28292B)
                                              : Colors.white,
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              width: 1,
                                              color: Colors.black.withOpacity(
                                                  0.11999999731779099),
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(8),
                                          ),
                                        ),
                                        child: Column(
                                          children: [
                                            Row(
                                              children: [
                                                Text(
                                                  'Subtotal',
                                                  style: TextStyle(
                                                    color: _isDarkMode
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.08,
                                                    letterSpacing: 0.28,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(
                                                  '\$0.00',
                                                  style: TextStyle(
                                                    color: _isDarkMode
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.08,
                                                    letterSpacing: 0.28,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Tax',
                                                  style: TextStyle(
                                                    color: _isDarkMode
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.08,
                                                    letterSpacing: 0.28,
                                                  ),
                                                ),
                                                Text(
                                                  ' (No Tax)',
                                                  style: TextStyle(
                                                    color: _isDarkMode
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.08,
                                                    letterSpacing: 0.28,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(
                                                  '\$0.00',
                                                  style: TextStyle(
                                                    color: _isDarkMode
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.08,
                                                    letterSpacing: 0.28,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Divider(
                                              thickness: 1,
                                              color: _isDarkMode ? Colors.white.withOpacity(0.23999999463558197)
                                              : Colors.black.withOpacity(
                                                  0.11999999731779099),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'SALE TOTAL',
                                                  style: TextStyle(
                                                    color: _isDarkMode
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0.08,
                                                    letterSpacing: 1.12,
                                                  ),
                                                ),
                                                const SizedBox(width: 8),
                                                Text(
                                                  '( 2 Items )',
                                                  style: TextStyle(
                                                    color: _isDarkMode
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w400,
                                                    height: 0.08,
                                                    letterSpacing: 0.28,
                                                  ),
                                                ),
                                                Spacer(),
                                                Text(
                                                  '\$0.00',
                                                  textAlign: TextAlign.right,
                                                  style: TextStyle(
                                                    color: _isDarkMode
                                                        ? Colors.white
                                                        : Colors.black,
                                                    fontSize: 14,
                                                    fontFamily: 'Roboto',
                                                    fontWeight: FontWeight.w700,
                                                    height: 0.08,
                                                  ),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                : Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/NewIcons/cashregiste.svg',
                                        width: 200,
                                        height: 200,
                                      ),
                                      const SizedBox(height: 20),
                                      Text(
                                        'REGISTER CLOSED',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: _isDarkMode
                                              ? Colors.white
                                              : Colors.black,
                                          fontSize: 20,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          height: 0.06,
                                        ),
                                      ),
                                      const SizedBox(height: 22),
                                      Text(
                                        'Set a opening float to open the register and make a sale.',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: _isDarkMode
                                              ? Colors.white.withOpacity(
                                                  0.23999999463558197)
                                              : Colors.black.withOpacity(
                                                  0.23999999463558197),
                                          fontSize: 14,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400,
                                          height: 0.08,
                                        ),
                                      ),
                                      const SizedBox(height: 30),
                                      Container(
                                        width: 320,
                                        child: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Open Float',
                                                    style: TextStyle(
                                                      color: _isDarkMode
                                                          ? Colors.white
                                                          : Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 0.10,
                                                      letterSpacing: -0.08,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                height: 40,
                                                padding: const EdgeInsets.only(
                                                    left: 8),
                                                decoration: ShapeDecoration(
                                                  color: _isDarkMode
                                                      ? const Color(0xFF1C1D1F)
                                                      : Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      width: 1,
                                                      color: _isDarkMode
                                                          ? Colors.white
                                                              .withOpacity(
                                                                  0.23999999463558197)
                                                          : Colors.black
                                                              .withOpacity(
                                                                  0.11999999731779099),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Expanded(
                                                        child: TextField(
                                                      keyboardType: TextInputType
                                                          .number, // Open numpad
                                                      decoration:
                                                          InputDecoration(
                                                        hintText: '\$ 0.00',
                                                        hintStyle: TextStyle(
                                                          color: _isDarkMode
                                                              ? Colors.white
                                                                  .withOpacity(
                                                                      0.23999999463558197)
                                                              : Colors.black
                                                                  .withOpacity(
                                                                      0.23999999463558197),
                                                          fontSize: 16,
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 0.09,
                                                          letterSpacing: -0.11,
                                                        ),
                                                        border:
                                                            InputBorder.none,
                                                      ),
                                                      style: TextStyle(
                                                        color: _isDarkMode
                                                            ? Colors.white
                                                                .withOpacity(
                                                                    0.23999999463558197)
                                                            : Colors.black
                                                                .withOpacity(
                                                                    0.23999999463558197),
                                                        fontSize: 16,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 0.09,
                                                        letterSpacing: -0.11,
                                                      ),
                                                    ))
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    'Notes',
                                                    style: TextStyle(
                                                      color: _isDarkMode
                                                          ? Colors.white
                                                          : Colors.black,
                                                      fontSize: 14,
                                                      fontFamily: 'Roboto',
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      height: 0.10,
                                                      letterSpacing: -0.08,
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 20,
                                              ),
                                              Container(
                                                height: 172,
                                                padding: const EdgeInsets.only(
                                                    left: 8),
                                                decoration: ShapeDecoration(
                                                  color: _isDarkMode
                                                      ? const Color(0xFF1C1D1F)
                                                      : Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                    side: BorderSide(
                                                      width: 1,
                                                      color: _isDarkMode
                                                          ? Colors.white
                                                              .withOpacity(
                                                                  0.23999999463558197)
                                                          : Colors.black
                                                              .withOpacity(
                                                                  0.11999999731779099),
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8),
                                                  ),
                                                ),
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Expanded(
                                                        child: TextField(
                                                      keyboardType: TextInputType
                                                          .multiline, // Open multiline keyboard
                                                      maxLines: 5,
                                                      decoration:
                                                          InputDecoration(
                                                        hintText:
                                                            'Enter your main text here...',
                                                        hintStyle: TextStyle(
                                                          color: _isDarkMode
                                                              ? Colors.white
                                                                  .withOpacity(
                                                                      0.23999999463558197)
                                                              : Colors.black
                                                                  .withOpacity(
                                                                      0.23999999463558197),
                                                          fontSize: 16,
                                                          fontFamily: 'Roboto',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          height: 0.09,
                                                          letterSpacing: -0.11,
                                                        ),
                                                        border:
                                                            InputBorder.none,
                                                      ),
                                                      style: TextStyle(
                                                        color: _isDarkMode
                                                            ? Colors.white
                                                            : Colors.black
                                                                .withOpacity(
                                                                    0.23999999463558197),
                                                        fontSize: 16,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        height: 0.09,
                                                        letterSpacing: -0.11,
                                                      ),
                                                    ))
                                                  ],
                                                ),
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                              ElevatedButton(
                                                onPressed: openRegister,
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor: Colors
                                                      .transparent, // Make the button background transparent
                                                  shadowColor: Colors
                                                      .transparent, // Remove the button shadow
                                                  padding: EdgeInsets.zero,
                                                ),
                                                child: Container(
                                                  height: 48,
                                                  padding:
                                                      const EdgeInsets.all(14),
                                                  clipBehavior: Clip.antiAlias,
                                                  decoration: ShapeDecoration(
                                                    color:
                                                        const Color(0xFF2196F3),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        8)),
                                                  ),
                                                  child: const Center(
                                                    child: Text(
                                                      'Open Register',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontFamily: 'Roboto',
                                                        fontWeight:
                                                            FontWeight.w700,
                                                        height: 0.09,
                                                        letterSpacing: -0.11,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                          ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          VerticalDivider(
            width: 1,
            color: Colors.black.withOpacity(0.11999999731779099),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 24.0, bottom: 10.0, left: 12, right: 12),
              child: Column(
                children: [
                  if (_openRegister)
                    Container(
                      height: 48,
                      padding: const EdgeInsets.all(8),
                      clipBehavior: Clip.antiAlias,
                      decoration: ShapeDecoration(
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            width: 1,
                            color: _isDarkMode
                                ? Colors.white.withOpacity(0.23999999463558197)
                                : Colors.black.withOpacity(0.11999999731779099),
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          _isDarkMode
                              ? SvgPicture.asset(
                                  'assets/NewIcons/user1.svg',
                                  height: 20,
                                  width: 20,
                                  alignment: Alignment.topCenter,
                                )
                              : SvgPicture.asset(
                                  'assets/NewIcons/user.svg',
                                  height: 20,
                                  width: 20,
                                  alignment: Alignment.topCenter,
                                ),
                          const SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Search Customer',
                            style: TextStyle(
                              color: _isDarkMode
                                  ? Colors.white
                                      .withOpacity(0.23999999463558197)
                                  : Colors.black
                                      .withOpacity(0.11999999731779099),
                              fontSize: 14,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (!_openRegister)
                    const SizedBox(
                      height: 48,
                    ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: _buildCustomButton(
                            0,
                            'Remove Customer',
                            'assets/NewIcons/customer.svg',
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: _buildCustomButton(
                            1,
                            'Add Discount',
                            'assets/NewIcons/discount.svg',
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: _buildCustomButton(
                            2,
                            'Add Note',
                            'assets/NewIcons/note.svg',
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: _buildCustomButton(
                            3,
                            'Cash Drawer',
                            'assets/NewIcons/cash.svg',
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: _buildCustomButton(
                            4,
                            'Amount Roundup',
                            'assets/NewIcons/roundup.svg',
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: _buildCustomButton(
                            5,
                            'Void Sale',
                            'assets/NewIcons/cancel.svg',
                          )),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: _buildCustomButton(
                            6,
                            'Park Sale',
                            'assets/NewIcons/parksale.svg',
                          )),
                          const SizedBox(
                            width: 20,
                          ),
                          Expanded(
                              child: _buildCustomButton(
                            7,
                            'Retrieve Sale',
                            'assets/NewIcons/retrivesale.svg',
                          )),
                        ],
                      )
                    ],
                  ),
                  const Spacer(),
                  Container(
                    height: 48,
                    padding: const EdgeInsets.all(14),
                    decoration: ShapeDecoration(
                      color: _openRegister
                          ? const Color(0xFF2196F3)
                          : Colors.black.withOpacity(0.11999999731779099),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'PAY',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 0.09,
                            letterSpacing: -0.11,
                          ),
                        ),
                        SizedBox(width: 4),
                        Text(
                          '(0 items)',
                          style: TextStyle(
                            color: Color(0xFFFAFAFA),
                            fontSize: 12,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        Spacer(),
                        Text(
                          '\$0.00',
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            height: 0.09,
                            letterSpacing: -0.11,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildIconContainer(int index, String assetPath) {
    bool isSelected = _selectedIcon == assetPath;
    String displayedAssetPath =
        isSelected ? assetPath.replaceFirst('.svg', '1.svg') : assetPath;
    return GestureDetector(
      onTap: () => _onIconTap(assetPath),
      child: Container(
        width: 80,
        height: 70,
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 56,
                      height: 56,
                      padding: const EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: isSelected
                            ? (!_isDarkMode
                                ? Colors.white
                                : const Color((0xFF2196F3)))
                            : (_isDarkMode
                                ? const Color(0xFF212224)
                                : const Color(0xFF2196F3)),
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: isSelected
                            ? [
                                BoxShadow(
                                  color: const Color(0xFF175F91).withOpacity(0),
                                  spreadRadius: 1,
                                  blurRadius: 1,
                                ),
                              ]
                            : [],
                      ),
                      child: SvgPicture.asset(
                        displayedAssetPath,
                        color: isSelected
                            ? (!_isDarkMode ? const Color(0xFF2196F3) : null)
                            : (_isDarkMode ? const Color(0xFF2196F3) : null),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomButton(int index, String text, String assetPath) {
    String displayedAssetPath = _isDarkMode
        ? assetPath.replaceFirst('.svg', '1.svg')
        : (_openRegister ? assetPath.replaceFirst('.svg', '2.svg') : assetPath);

    return Container(
      height: 80,
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
      decoration: ShapeDecoration(
        color: _openRegister && _isDarkMode
            ? Colors.white
            : _openRegister && !_isDarkMode
                ? const Color(0x142196F3)
                : _isDarkMode
                    ? Colors.white.withOpacity(0.23999999463558197)
                    : Colors.black.withOpacity(0.12),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            displayedAssetPath,
            height: 24,
            width: 24,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            text,
            style: TextStyle(
              color: _openRegister && !_isDarkMode
                  ? const Color(0xFF2196F3)
                  : _isDarkMode
                      ? const Color(0xFF161313)
                      : Colors.black.withOpacity(0.12),
              fontSize: 12,
              fontFamily: 'Roboto',
              fontWeight: FontWeight.w500,
              height: 0.11,
            ),
          ),
        ],
      ),
    );
  }
}
