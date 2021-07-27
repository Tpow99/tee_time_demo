import 'package:flutter/material.dart';
import 'package:tee_time/tee_time_colors.dart';
import 'package:dotted_line/dotted_line.dart';

class TeeTimeView extends StatefulWidget {
  TeeTimeView();

  @override
  TeeTimeViewState createState() => TeeTimeViewState();
}

class TeeTimeViewState extends State<TeeTimeView> {
  List<int> holesList = [4, 8];
  List<int> peopleList = [1, 2, 3, 4];
  List<int> transportList = [1, 2];

  int selectedHoles = 0;
  int selectedPeople = 0;
  int selectedTransport = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          getHeader(),
          getCalenderInformation(),
          getHoles(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: DottedLine(
              dashColor: Colors.grey[400]!,
            ),
          ),
          getPeople(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: DottedLine(
              dashColor: Colors.grey[400]!,
            ),
          ),
          getTransport(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: DottedLine(
              dashColor: Colors.grey[400]!,
            ),
          ),
          getRate(),
          getCredits(),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: Container(
              height: 1,
              color: Colors.grey[400],
            ),
          ),
          getTotal(),
          Expanded(child: getBookButton()),
        ],
      ),
    );
  }

  Widget getHeader() {
    return IntrinsicHeight(
      child: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height / 5,
            width: double.infinity,
            child: Image.asset(
              "lib/assets/course.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                size: MediaQuery.of(context).size.width / 15,
                color: Colors.white,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "Mountain Dell",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: MediaQuery.of(context).size.width / 15),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "\n\n\nParleys Canyon, I-80,Exit #134,\nSalt Lake City, UT 84109",
              style: TextStyle(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }

  Widget getCalenderInformation() {
    return ListView(
      shrinkWrap: true,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
              child: Icon(Icons.calendar_today,
                  size: MediaQuery.of(context).size.width / 15,
                  color: TeeTimeColors.primaryColor[700]),
            ),
            Text(
              "Saturday, March 20",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 15,
                  color: TeeTimeColors.primaryColor[700]),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Icon(Icons.access_time,
                  size: MediaQuery.of(context).size.width / 15,
                  color: TeeTimeColors.primaryColor[700]),
            ),
            Text(
              "9:30am",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 15,
                  color: TeeTimeColors.primaryColor[700]),
            ),
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Icon(Icons.sports_golf,
                  size: MediaQuery.of(context).size.width / 15,
                  color: TeeTimeColors.primaryColor[700]),
            ),
            Text(
              "Canyon",
              style: TextStyle(
                  fontSize: MediaQuery.of(context).size.width / 15,
                  color: TeeTimeColors.primaryColor[700]),
            ),
          ],
        ),
      ],
    );
  }

  Widget getHoles() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: MediaQuery.of(context).size.width / 6.5,
            height: MediaQuery.of(context).size.width / 6.5,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6.5,
            height: MediaQuery.of(context).size.width / 6.5,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedHoles = 0;
                });
              },
              child: Text(
                "9",
                style: selectedHoles == 0
                    ? TextStyle(color: TeeTimeColors.accentBlue)
                    : TextStyle(color: TeeTimeColors.primaryColor),
              ),
              style: ButtonStyle(
                backgroundColor: selectedHoles == 0
                    ? MaterialStateProperty.all(TeeTimeColors.primaryColor)
                    : MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  CircleBorder(
                    side: selectedHoles == 0
                        ? BorderSide(color: TeeTimeColors.primaryColor)
                        : BorderSide(color: TeeTimeColors.secondaryColor),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6.5,
            height: MediaQuery.of(context).size.width / 6.5,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedHoles = 1;
                });
              },
              child: Text(
                "18",
                style: selectedHoles == 1
                    ? TextStyle(color: TeeTimeColors.accentBlue)
                    : TextStyle(color: TeeTimeColors.primaryColor),
              ),
              style: ButtonStyle(
                backgroundColor: selectedHoles == 1
                    ? MaterialStateProperty.all(TeeTimeColors.primaryColor)
                    : MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  CircleBorder(
                    side: selectedHoles == 1
                        ? BorderSide(color: TeeTimeColors.primaryColor)
                        : BorderSide(color: TeeTimeColors.secondaryColor),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getPeople() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6.5,
            height: MediaQuery.of(context).size.width / 6.5,
            child: Icon(
              Icons.person_outline,
              color: TeeTimeColors.primaryColor[700],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6.5,
            height: MediaQuery.of(context).size.width / 6.5,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedPeople = 0;
                });
              },
              child: Text(
                "1",
                style: selectedPeople == 0
                    ? TextStyle(color: TeeTimeColors.accentBlue)
                    : TextStyle(color: TeeTimeColors.primaryColor),
              ),
              style: ButtonStyle(
                backgroundColor: selectedPeople == 0
                    ? MaterialStateProperty.all(TeeTimeColors.primaryColor)
                    : MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  CircleBorder(
                    side: selectedPeople == 0
                        ? BorderSide(color: TeeTimeColors.primaryColor)
                        : BorderSide(color: TeeTimeColors.secondaryColor),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6.5,
            height: MediaQuery.of(context).size.width / 6.5,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedPeople = 1;
                });
              },
              child: Text(
                "2",
                style: selectedPeople == 1
                    ? TextStyle(color: TeeTimeColors.accentBlue)
                    : TextStyle(color: TeeTimeColors.primaryColor),
              ),
              style: ButtonStyle(
                backgroundColor: selectedPeople == 1
                    ? MaterialStateProperty.all(TeeTimeColors.primaryColor)
                    : MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  CircleBorder(
                    side: selectedPeople == 1
                        ? BorderSide(color: TeeTimeColors.primaryColor)
                        : BorderSide(color: TeeTimeColors.secondaryColor),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6.5,
            height: MediaQuery.of(context).size.width / 6.5,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedPeople = 2;
                });
              },
              child: Text(
                "3",
                style: selectedPeople == 2
                    ? TextStyle(color: TeeTimeColors.accentBlue)
                    : TextStyle(color: TeeTimeColors.primaryColor),
              ),
              style: ButtonStyle(
                backgroundColor: selectedPeople == 2
                    ? MaterialStateProperty.all(TeeTimeColors.primaryColor)
                    : MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  CircleBorder(
                    side: selectedPeople == 2
                        ? BorderSide(color: TeeTimeColors.primaryColor)
                        : BorderSide(color: TeeTimeColors.secondaryColor),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6.5,
            height: MediaQuery.of(context).size.width / 6.5,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedPeople = 3;
                });
              },
              child: Text(
                "4",
                style: selectedPeople == 3
                    ? TextStyle(color: TeeTimeColors.accentBlue)
                    : TextStyle(color: TeeTimeColors.primaryColor),
              ),
              style: ButtonStyle(
                backgroundColor: selectedPeople == 3
                    ? MaterialStateProperty.all(TeeTimeColors.primaryColor)
                    : MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  CircleBorder(
                    side: selectedPeople == 3
                        ? BorderSide(color: TeeTimeColors.primaryColor)
                        : BorderSide(color: TeeTimeColors.secondaryColor),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getTransport() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6.5,
            height: MediaQuery.of(context).size.width / 6.5,
            child: Icon(
              Icons.directions_walk,
              color: TeeTimeColors.primaryColor[700],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6.5,
            height: MediaQuery.of(context).size.width / 6.5,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedTransport = 0;
                });
              },
              child: Icon(
                Icons.directions_walk,
                color: selectedTransport == 0
                    ? TeeTimeColors.accentBlue
                    : TeeTimeColors.primaryColor,
              ),
              style: ButtonStyle(
                backgroundColor: selectedTransport == 0
                    ? MaterialStateProperty.all(TeeTimeColors.primaryColor)
                    : MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  CircleBorder(
                    side: selectedTransport == 0
                        ? BorderSide(color: TeeTimeColors.primaryColor)
                        : BorderSide(color: TeeTimeColors.secondaryColor),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: MediaQuery.of(context).size.width / 6.5,
            height: MediaQuery.of(context).size.width / 6.5,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedTransport = 1;
                });
              },
              child: Icon(
                Icons.drive_eta,
                color: selectedTransport == 1
                    ? TeeTimeColors.accentBlue
                    : TeeTimeColors.primaryColor,
              ),
              style: ButtonStyle(
                backgroundColor: selectedTransport == 1
                    ? MaterialStateProperty.all(TeeTimeColors.primaryColor)
                    : MaterialStateProperty.all(Colors.white),
                shape: MaterialStateProperty.all(
                  CircleBorder(
                    side: selectedTransport == 1
                        ? BorderSide(color: TeeTimeColors.primaryColor)
                        : BorderSide(color: TeeTimeColors.secondaryColor),
                  ),
                ),
                shadowColor: MaterialStateProperty.all(Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget getRate() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Public Rate x1",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 15,
              color: TeeTimeColors.primaryColor[700],
            ),
          ),
          Text(
            "\$46",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 15,
              color: TeeTimeColors.primaryColor[700],
            ),
          ),
        ],
      ),
    );
  }

  Widget getCredits() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Credits",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 15,
              color: TeeTimeColors.primaryColor[700],
            ),
          ),
          Expanded(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    color: TeeTimeColors.primaryColor,
                    height: 8,
                    width: 8,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: IconButton(
                    icon: Icon(Icons.info),
                    onPressed: () {},
                    iconSize: 15,
                    padding: EdgeInsets.all(0),
                    color: TeeTimeColors.secondaryColor,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "1",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 15,
              color: TeeTimeColors.primaryColor[700],
            ),
          ),
        ],
      ),
    );
  }

  Widget getTotal() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 5, 20, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Total",
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 15,
              color: TeeTimeColors.primaryColor[700],
            ),
          ),
          Text(
            "\$" + (46 * peopleList[selectedPeople]).toString(),
            style: TextStyle(
              fontSize: MediaQuery.of(context).size.width / 15,
              fontWeight: FontWeight.bold,
              color: TeeTimeColors.primaryColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget getBookButton() {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Container(
        width: double.infinity,
        child: TextButton(
          child: Text(
            "BOOK",
            style: TextStyle(
                color: TeeTimeColors.primaryColor,
                fontSize: MediaQuery.of(context).size.width / 11),
          ),
          onPressed: () {},
          style: TextButton.styleFrom(
              backgroundColor: TeeTimeColors.secondaryColor),
        ),
      ),
    );
  }
}
