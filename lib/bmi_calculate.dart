import 'package:flutter/material.dart';

class bmji_calculator extends StatefulWidget
{
  @override
  State<StatefulWidget> createState(){
    return bmi_state();
  }

}

class bmi_state extends State<bmi_calculator>
{
  TextEditingController textWeightController =new TextEditingController();
  TextEditingController textHeightController =new TextEditingController();
  String Result="";

  void calculateBMI()
  {
    setState(() {
      double weight= double.parse(textWeightController.text);
      double height= double.parse(textHeightController.text);

      double final_h= height+height;
      double bmi_res=weight/final_h;

      Result=bmi_res.toString();
    });



  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('BMI Calculator'),
            backgroundColor: Colors.red,
          ),
          body: Column(
            children: <Widget>[
              Image.asset('assets/images/bmi_about.png'),
              Text('The formula for calculating BMI is: Weight/Height+Height',
              style: TextStyle(
                fontSize: 15,
                color: Colors.red
              ),),
           SizedBox(height: 14,),
           TextField(
            controller: textWeightController,
          decoration: InputDecoration(
            hintText: "Please enter your weight in KG"
          ),
        ),
           TextField(
      controller: textHeightController,
          decoration: InputDecoration(
          hintText: "Please enter your height in Meters"
      ),
    ),
           RaisedButton(
             child: Text("Calculate BMI"),
    color: Colors.red,
    onPressed: (){
               calculateBMI();
               }
    ),
    Text('Your BMI is: $Result'),
    ]
    ),
    )

  };
}