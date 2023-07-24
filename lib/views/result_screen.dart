import 'package:bmi_new_design/blocs/calculte_cubit.dart';
import 'package:bmi_new_design/blocs/calculte_cubit.dart';
import 'package:bmi_new_design/chart/line_chart_widget.dart';
import 'package:bmi_new_design/views/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResultScreen extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return BlocConsumer<BmiCubit, BmiState>(
  listener: (context, state) {
    // TODO: implement listener
  },

  builder: (context, state) {
    var cubit = BmiCubit.get(context);
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
        ],

      ),
      body: Padding(

        padding: const EdgeInsets.all(20),
        child: Column(

          children: [
            const Text(
              "result",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: height*0.45,
              width: width*0.90,
              color: Colors.grey[800],
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top:50 ,
                      child:Container(
                        child: Text('your current BMI',style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.w300
                  ),),
                      ) ),
                  Positioned(
                    top:70 ,
                      child:Container(
                        child: Text(cubit.result.toString(),style: TextStyle(
                    fontSize: 50,
                    color: Colors.white,
                    fontWeight: FontWeight.bold
                  ),),
                      ) ),
                  LineChartWidget(),
                ],
              ),
            )
            ,SizedBox(
              height: 100,
            )
            ,Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: 50,
                child: MaterialButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                  },
                  child: Text("back to calculate"),
                  color: Colors.green,
                ),
              ),
            )

          ],
        ),
      ),
    );
  },
);
  }
}
/*Text("male",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
Text("AGE:${cubit.age}  ",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
Text("HEIGHT: ${cubit.hight} ",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
Text("WEIGHT: ${cubit.weight} ",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
Text("Result ",style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),),
*/