import 'package:flutter/material.dart';
import 'package:mobile_developer_intern_app/page/page3.dart';
import 'package:mobile_developer_intern_app/style.dart';

class page2 extends StatefulWidget {
  const page2({Key? key, required this.name}) : super(key: key);
  final String name;
  @override
  State<page2> createState() => _page2State();
}

class _page2State extends State<page2> {
  String selected = "Selected User Name";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_rounded,
            size: 20,
          ),
          color: Colors.blue,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          "Second Screen",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 18,
            fontFamily: "Poppins",
          ),
        ),
        backgroundColor: Colors.white,
      ),
      body: Container(
          height: double.maxFinite,
          padding: const EdgeInsets.symmetric(vertical: 35, horizontal: 20),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "welcome",
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w400,
                              fontSize: 12),
                        ),
                        Text(
                          widget.name,
                          style: TextStyle(
                              fontFamily: "Poppins",
                              fontWeight: FontWeight.w600,
                              fontSize: 18),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  selected,
                  style: TextStyle(
                      fontFamily: "Poppins",
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  child: ElevatedButton(
                    child: const Text(
                      'Choose a User',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Styles.buttonDefaultBackgroundColor,
                        minimumSize: const Size.fromHeight(50),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12))),
                    onPressed: () {
                      _page3(context);
                    },
                  ),
                ),
              ],
            ),
          )),
    );
  }

  Future<void> _page3(BuildContext context) async {
    // Navigator.push returns a Future that completes after calling
    // Navigator.pop on the Selection Screen.
    final result = await Navigator.push(
      context,
      // Create the SelectionScreen in the next step.
      MaterialPageRoute(builder: (context) => const page3()),
    );
    if (result != null) {
      setState(() {
        selected = result;
      });
    }
  }
}
