// Challenge 1
//Create a function that takes an list of positive and negative numbers.
// Return a list where the first element is the count of positive numbers and the second element is the sum of negative numbers.
// Examples
// countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]) ➞ [10, -65]
/// There are a total of 10 positive numbers.
/// The sum of all negative numbers equals -65.

List countPosSumNeg(List list){

  int posList = 0;
  int negList = 0;
  List newList = [];

  for(int i = 0; i < list.length; i++){
    if (list[i] > 0){
      posList++;
    }
    else if (list[i] < 0){
      negList = negList + list[i];
    }
  }

    newList.add(posList);
    newList.add(negList);
    return newList;
}

// Challenge 2
// The digit distance between two numbers is the absolute value of the difference of each digit.
//  To illustrate:
//
// digitDistance(234, 489) ➞ 12
// Since |2 - 4| + |3 - 8| + |4 - 9| = 2 + 5 + 5
/// Create a function that returns the digit distance between two integers.

int digitDistance(int a, int b){
  int count = 0;
  String temp = a.toString();
  String temp1 = b.toString();
  for(int i = 0; i < temp.length; i++){
    count = count + ((int.parse(temp[i]) - (int.parse(temp1[i]))))* (-1);
  }
  return count;
}

// Challenge 3
// Write test cases to test previous functions
main() {
  print(countPosSumNeg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]));
  print(digitDistance(234, 489));
}
