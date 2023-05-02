import 'package:flutter/material.dart';
import 'package:sabak12_quize_app_2/constants/app_text_styles.dart';
import 'package:sabak12_quize_app_2/constants/colors.dart';
import 'package:sabak12_quize_app_2/constants/text.dart';
import 'package:sabak12_quize_app_2/useFile.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UseQuize useQuize = UseQuize();
  List<Icon> iconAluu = [];

  void teksher(bool koldonuu) {
    bool correctAnswer = useQuize.joopAluu();
    setState(() {
      if (useQuize.isFinished() == true) {
        showDialog<void>(
         context: context,
          barrierDismissible: false,
           builder: (BuildContext context) {
            return AlertDialog(
              title: const Text(' QuizeApp'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const <Widget>[
                    Text(' Тест аягына келип жетти!!!'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                 child: const Text('Жок',
                  style: TextStyle(
                    color: AppColors.falseColor)),
                     onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
                TextButton(
                 child: const Text('Ооба',
                  style: TextStyle(
                    color: AppColors.trueColor),),
                     onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ],
            );
          },
        );
        useQuize.indexZero();
        iconAluu = [];
      } else {
        if (correctAnswer == koldonuu) {
          iconAluu.add(const Icon(
            Icons.check,
             color:AppColors.trueColor,
          ),
         );
        } else {
          iconAluu.add(const Icon(
            Icons.close,
             color:AppColors.falseColor,
          ),
         );
        }
        useQuize.nextQuestion();
      }
    }
   );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyColor,
       appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
         title: const Center(
          child: Text(
            'ТАПШЫРМА 7',
            style: AppTextStyles.appBarTextStyle,
          ),
        ),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
         child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
         children: [
           const Spacer(),
             Text(
                useQuize.surooAluu(),
                 style: AppTextStyles.appTextStyle,
                  textAlign: TextAlign.center,
              ),
       const SizedBox(height: 102),
              SizedBox(
              height: 70,
                width: 300,
                 child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.trueColor,
                  ),
                  onPressed: () {
                    teksher(true);
                  },
                  child:  const Text(AppText.tuura,                  
                    style: AppTextStyles.trueStyle,
                  ),
                ),
              ),
       const SizedBox(height: 20),
              SizedBox(
               height: 70,
                width: 300,
                 child: ElevatedButton(
                   style: ElevatedButton.styleFrom(
                     backgroundColor: AppColors.falseColor,
                  ),
                  onPressed: () {
                    teksher(false);
                  },
                  child:  const Text(AppText.tuuraEmes,                   
                    style: AppTextStyles.trueStyle,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              SizedBox(
                height: 40,
                 child: ListView.builder(
                  itemCount: iconAluu.length,
                   scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                     return iconAluu[index];
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}