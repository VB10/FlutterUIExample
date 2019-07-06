main(List<String> args) {
  final int TEN = 9;
  final int ELEVEN = 10;
  final TC_REGEX = r"^[1-9]{1}[0-9]{10}$";
  RegExp exp = new RegExp(TC_REGEX);
  String str = "37661117518";
  if (!exp.hasMatch(str))
    return;
  else {
    var strLength = str.split('').length;
    int odds = 0;
    int evens = 0;
    int firstTen = 0;
    for (var i = 0; i < strLength; i++) {
      print(i);
      // (1,3,5,7,9)
      if (i == strLength - 2) break;
      var val = int.parse(str[i]);
      // odd evens.
      if (i % 2 == 1)
        odds += val;
      else
        evens += val;

      firstTen += val;
    }
    print((odds * 7 - evens) % 10);
    print((odds * 7 - evens) % 10 == int.parse(str[TEN]));
    print(firstTen % 10 == int.parse(str[ELEVEN]));
  }

  // print(exp.pattern);
  // print(exp.hasMatch(str));
}
