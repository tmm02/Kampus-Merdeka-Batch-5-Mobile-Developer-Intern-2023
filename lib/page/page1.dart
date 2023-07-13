import 'package:flutter/material.dart';
import 'package:mobile_developer_intern_app/page/page2.dart';
import 'package:mobile_developer_intern_app/style.dart';

import '../widget/popup.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  TextEditingController nameController = TextEditingController();
  TextEditingController palindromeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          constraints: BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/background.png"), fit: BoxFit.cover),
          ),
          height: double.maxFinite,
          padding: const EdgeInsets.symmetric(vertical: 75, horizontal: 20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Color.fromRGBO(255, 255, 255, 0.3),
                  child: Icon(
                    Icons.person_add_alt_rounded,
                    color: Colors.white,
                    size: 50,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        // selectionHeightStyle:
                        //     BoxHeightStyle.includeLineSpacingMiddle,
                        controller: nameController,
                        maxLines: 1,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 15.0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: 'Name',
                            hintStyle: Styles.inputTextHintDefaultTextStyle,
                            filled: true,
                            fillColor: Styles.bgcolor),
                        style: Styles.inputTextDefaultTextStyle,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      child: TextField(
                        // selectionHeightStyle:
                        //     BoxHeightStyle.includeLineSpacingMiddle,
                        controller: palindromeController,
                        maxLines: 1,
                        decoration: const InputDecoration(
                            contentPadding: EdgeInsets.symmetric(
                                vertical: 5.0, horizontal: 15.0),
                            border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10))),
                            hintText: 'Palindrome',
                            hintStyle: Styles.inputTextHintDefaultTextStyle,
                            filled: true,
                            fillColor: Styles.bgcolor),
                        style: Styles.inputTextDefaultTextStyle,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                        child: Text(
                          'CHECK',
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Styles.buttonDefaultBackgroundColor,
                            minimumSize: const Size.fromHeight(50),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {
                          if ((isPalindrome(palindromeController.text)) ==
                              true) {
                            Popup.alertDialog(context, message: "Is Palindrome",
                                dialogCallback: (value) async {
                              if (value == 'OK') {
                                Navigator.of(context).pop();
                              }
                            });
                          }
                          if ((isPalindrome(palindromeController.text)) ==
                              false) {
                            Popup.alertDialog(context,
                                message: "Not Palindrome",
                                dialogCallback: (value) async {
                              if (value == 'OK') {
                                Navigator.of(context).pop();
                              }
                            });
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      child: ElevatedButton(
                        child: Text(
                          'NEXT',
                          style: TextStyle(fontFamily: 'Poppins'),
                        ),
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                Styles.buttonDefaultBackgroundColor,
                            minimumSize: const Size.fromHeight(50),
                            elevation: 0,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12))),
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => page2(
                                    name: nameController.text,
                                  )));
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )),
    );
  }

  bool isPalindrome(String text) {
    String lowerCasedText = text.toLowerCase().replaceAll(' ', '');
    return lowerCasedText == lowerCasedText.split(' ').reversed.join();
  }
}
