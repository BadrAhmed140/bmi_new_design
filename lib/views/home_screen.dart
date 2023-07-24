import 'package:bmi_new_design/blocs/calculte_cubit.dart';
import 'package:bmi_new_design/blocs/calculte_cubit.dart';
import 'package:bmi_new_design/enums/gender_enum.dart';
import 'package:bmi_new_design/views/result_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
                                                                    import 'package:flutter_bloc/flutter_bloc.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GenderEnum selectGender = GenderEnum.male;
  String dropdownValue1 = 'KG';
  String dropdownValue2 = 'KG';
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
            leading: IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu),
            ),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
            ],
          ),
          body: Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "BMI Calculator",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: height * 0.03,
                ),
                const Text(
                  "Gender",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: height * 0.010,
                ),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectGender = GenderEnum.male;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: height * 0.23,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: selectGender == GenderEnum.male
                                    ? Colors.green
                                    : Colors.black,
                                width: 4),
                            color: Colors.grey[800],
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  selectGender == GenderEnum.male
                                      ? Icons.add_circle
                                      : Icons.add_circle_outline_rounded,
                                  color: selectGender == GenderEnum.male
                                      ? Colors.green
                                      : Colors.white,
                                ),
                              ),
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/1340/1340619.png",
                                height: height * 0.09,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "MALE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: width * 0.010,
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            selectGender = GenderEnum.female;
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(5),
                          height: height * 0.23,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: selectGender == GenderEnum.female
                                    ? Colors.green
                                    : Colors.black,
                                width: 4),
                            color: Colors.grey[800],
                          ),
                          child: Column(
                            children: [
                              SizedBox(
                                height: height * 0.01,
                              ),
                              Align(
                                alignment: Alignment.topRight,
                                child: Icon(
                                  selectGender == GenderEnum.female
                                      ? Icons.add_circle
                                      : Icons.add_circle_outline_rounded,
                                  color: selectGender == GenderEnum.female
                                      ? Colors.green
                                      : Colors.white,
                                ),
                              ),
                              Image.network(
                                "https://cdn-icons-png.flaticon.com/128/866/866954.png",
                                height: height * 0.09,
                                color: Colors.white,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              const Text(
                                "FEMALE",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * 0.020,
                ),
                const Text(
                  "Weight",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: height * 0.010,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: height * 0.07,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton(
                                onPressed: () {cubit.weightincrement();},
                                mini: true,
                                backgroundColor: Colors.black,
                                child: Icon(Icons.add),
                              ),
                              Text(
                                cubit.weight.toString(),
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              FloatingActionButton(
                                onPressed: () {cubit.weightdecrement();},
                                mini: true,
                                backgroundColor: Colors.black,
                                child: Icon(Icons.minimize),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: height * 0.07,
                          decoration: BoxDecoration(color: Colors.white),
                          child: // Step 1.

// Step 2.
                              DropdownButton<String>(
                            // Step 3.
                            value: dropdownValue1,
                            // Step 4.
                            items: <String>['KG',"Cm"]
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 30),
                                ),
                              );
                            }).toList(),
                            // Step 5.
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue1 = newValue!;
                              });
                            },
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: height * 0.020,
                ),
                const Text(
                  "Hieght",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: height * 0.010,
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 2,
                        child: Container(
                          height: height * 0.07,
                          decoration: BoxDecoration(color: Colors.white),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              FloatingActionButton(
                                onPressed: () {
                                  cubit.hightincrement();
                                },
                                mini: true,
                                backgroundColor: Colors.black,
                                child: Icon(Icons.add),
                              ),
                              Text(
                                cubit.hight.toString(),
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                              FloatingActionButton(
                                onPressed: () {
                                  cubit.hightdecrement();
                                },
                                mini: true,
                                backgroundColor: Colors.black,
                                child: Icon(Icons.minimize),
                              ),
                            ],
                          ),
                        )),
                    SizedBox(
                      width: width * 0.05,
                    ),
                    Expanded(
                        flex: 1,
                        child: Container(
                          height: height * 0.07,
                          decoration: BoxDecoration(color: Colors.white),
                          child: // Step 1.

// Step 2.
                              DropdownButton<String>(
                            // Step 3.
                            value: dropdownValue2,
                            // Step 4.
                            items: <String>['KG',"Cm"]
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem<String>(
                                value: value,
                                child: Text(
                                  value,
                                  style: TextStyle(fontSize: 30),
                                ),
                              );
                            }).toList(),
                            // Step 5.
                            onChanged: (String? newValue) {
                              setState(() {
                                dropdownValue2 = newValue!;
                              });
                            },
                          ),
                        ))
                  ],
                ),
                SizedBox(
                  height: height * 0.015,
                ),
                const Text(
                  "Age",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(
                  height: height * 0.010,
                ),
                Container(
                  height: height * 0.07,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      FloatingActionButton(
                        onPressed: () {cubit.ageincrement();},
                        mini: true,
                        backgroundColor: Colors.black,
                        child: Icon(Icons.add),
                      ),
                      Text(
                        cubit.age.toString(),
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      FloatingActionButton(
                        onPressed: () {cubit.agedecrement();},
                        mini: true,
                        backgroundColor: Colors.black,
                        child: Icon(Icons.minimize),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height * 0.05,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    child: MaterialButton(
                      onPressed: () {
                        cubit.resultcul();
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => ResultScreen()));
                      },
                      child: Text("calculate"),
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
