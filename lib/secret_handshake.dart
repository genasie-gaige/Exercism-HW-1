class SecretHandshake {
  List<String> commands(int num){
    if(num == 1) return ["wink"];

    String binary = createBinary(num).toString();
    List<String> shake = [];
    String move;
    binary = new String.fromCharCodes(binary.runes.toList().reversed);
    for(int i = 0; i < binary.length; i++){
      if(i == 4){
        shake = new List.from(shake.reversed);
      } else if(binary[i] == "1"){
        move = findMove(i);
        shake.add(move);
      }
    }
    return shake;
  }

  String findMove(int index){
    String move;
    switch(index){
      case 0:
        move = "wink";
        break;
      case 1:
        move = "double blink";
        break;
      case 2:
        move = "close your eyes";
        break;
      default:
        move = "jump";
        break;
    }
    return move;
  }

  int createBinary(int num){
    int binary = 0;
    int i = 1;

    while(num > 0){
      binary = binary + (num % 2) * i;
      num = (num/2).floor();
      i *= 10;
    }
    return binary;
  }
}

//edit
