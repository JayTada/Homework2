import 'dart:io';

import 'dart:math';

void main() {
  var i = 0;
  var r = Random();
  var num=0;
  var answer = r.nextInt(100);
 print(answer);
  do{
    print("♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥");
    stdout.write('♥ Please guess the number:');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      print("♥ กรอกข้อมูลผิด");
    }else{
      if(guess != answer){
        if(guess > answer){
          print("♥ "+input + " IS TOO HIGH!▲");
        }
        if(guess < answer) {
          print("♥ " +input + " IS TOO LOW!▼");
        }
       num++;
      }
      else{
        num++;
        print("♥ "+input + " IS CORRECT ♥  , total guesses:" + num.toString());
        print("♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥");
        print("♥                   END                        ");
        print("♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥♥");
        break;
      }
    }
  }while(true);
  }