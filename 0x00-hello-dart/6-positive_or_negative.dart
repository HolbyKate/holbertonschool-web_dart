void main(List<String> args){
    int n = int.parse(args[0]);
    String result = n > 0
        ? "$n is positive"
        : (n < 0 ? "$n is negative" : "$n is zero");
    print(result);
}