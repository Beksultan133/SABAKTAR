
import 'dart:math';

class BMICalculator{
  double bmi({
   required double heightt,
    required int weight}){
      final res =  weight / pow(heightt/100, 2);
       return res;
  }
 String bmiresault(res){
    
   if (res <= 18.5){
     return 'Сиз арыксыз' ;
     // print('ciz aryk;$res');
    }else if (res >=18.6 && res <= 25){
    //  print('siz normal;$res');
       return 'Нормалдуу' ;
    }else if (res >= 25.1 && res <= 30){
        return 'Сизде ашыкча салмак бар!' ;
      //print('siz ashykcha salmak;$res');
    }else {
        return 'Сиз семизсиз' ;
      //print('semiz;$res');
    }
  }
 String  bmidescription(res){
    
   if (res <= 18.5){
     return 'Сиз арыксыз,тамактануу норманызды кароо керек' ;
     // print('ciz aryk;$res');
    }else if (res >=18.6 && res <= 25){
    //  print('siz normal;$res');
       return 'Сиздин дене салмагыныз нормалдуу.Азаматсыз!' ;
    }else if (res >= 25.1 && res <= 30){
        return 'Сизде ашыкча салмак бар.спорт менен алектениниз!' ;
      //print('siz ashykcha salmak;$res');
    }else {
        return 'фитнес клубка барыныз!' ;
      //print('semiz;$res');
    }
  }
}