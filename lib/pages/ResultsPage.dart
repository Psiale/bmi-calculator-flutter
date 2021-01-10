import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import '../widgetBuilder/darkContainer.dart';
import '../widgetBuilder/bottomButton.dart';
import '../widgetBuilder/shareModal.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({
    this.weightLabel,
    this.weight,
    this.weightDescription,
  });

  final String weightLabel;
  final String weight;
  final String weightDescription;
  final ShareModal shareModal = new ShareModal();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Results"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: new DarkContainer(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      (weightLabel != null)
                          ? weightLabel
                          : "No weight provided",
                      style: resultTextStyle,
                    ),
                    Stack(children: [
                      Text(
                        (weight != null) ? weight : "N/A",
                        style: BMITextStyle,
                      ),
                      Positioned(top: 0.0, right: 0.0, child: ShareModal())
                    ]),
                    Text(
                      (weightDescription != null)
                          ? weightDescription
                          : "No weight description",
                      textAlign: TextAlign.center,
                      style: BMIDescriptionTextStyle,
                    )
                  ],
                ),
                color: activeCardColor,
              ),
            ),
            Container(
                child: BottomButton(
                    title: "RE-CALCULATE",
                    onClick: () {
                      Navigator.pop(context);
                    }),
                width: double.infinity,
                height: bottomContainerHeight,
                margin: EdgeInsets.only(top: 5.0),
                decoration: BoxDecoration(
                  color: bottomContainerColor,
                ))
          ],
        ),
      ),
    );
  }
}
