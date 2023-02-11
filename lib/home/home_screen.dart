import 'package:flutter/material.dart';
import 'package:stack_underflow_frontend/constant/constants.dart';

class HomeScreen extends StatelessWidget {
  var hospitalType = "Hospital Type Test";
  var name = "Name Test";
  var birthDate = "2023-02-11";
  var gender = 0;
  var genderText = "Not selected";
  var lastVisitDate = "2023-02-10";
  var lastUpdateDate = "2023-02-10";

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    switch (gender) {
      case 0:
        genderText = "Male";
        break;
      case 1:
        genderText = "Female";
        break;
      default:
        genderText = "Not selected";
    }

    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(40, 50, 40, 50),
        child: SizedBox(
          height: height * 0.7,
          child: AspectRatio(
            aspectRatio: 2 / 3,
            child: Card(
              elevation: 8,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(40)
              ),
              color: Colors.green,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 40),
                child: Column(
                  children: [
                    Container(
                      color: Colors.green,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            children: [
                              Text(hospitalType),
                              Text(name),
                              Text(genderText),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Image.network(
                              "https://picsum.photos/200",
                              height: 100,
                              width: 100,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(LAST_VISIT_DATE),
                              Text(lastVisitDate),
                              const Text(LAST_UPDATE_DATE),
                              Text(lastUpdateDate),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ),
          ),
        ),
      ),
    );
  }
}