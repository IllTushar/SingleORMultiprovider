import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../provider/slider_count.dart';
import 'package:provider/provider.dart';

class NewPageSlider extends StatefulWidget {
  @override
  State<NewPageSlider> createState() => _NewPageSliderState();
}

class _NewPageSliderState extends State<NewPageSlider> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Consumer<sliderCount>(builder: (context, value, child) {
            return Slider(
                min: 0.0, max: 1.0, value: value.value, onChanged: (val) {
                  value.setValue(val);
            });
          }),
          Consumer<sliderCount>(builder: (context,value,child){
            return Row(
              children: [
                Expanded(
                  child: Container(
                    height: 70,
                    child: Center(child: Text("Container 1")),
                    color: Colors.blue.withOpacity(value.value),
                  ),
                ),
                Expanded(
                  child: Container(
                    height: 70,
                    child: Center(child: Text("Container 2")),
                    color: Colors.green.withOpacity(value.value),
                  ),
                )
              ],
            );
          }),

        ],
      ),
    );
  }
}
