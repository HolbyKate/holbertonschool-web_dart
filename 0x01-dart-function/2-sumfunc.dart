// function that accepts 2 args and return addition
int add(int a, int b) {
    return (a + b);
}

// function that accepts 2 args and return substraction
int sub(int a, int b) {
    return (a - b);
}

// function that accepts 2 args and return message with output of 2 other func
String showFunc(int a, int b) {
    int addition = add(a, b);
    int substraction = sub(a, b);

    return ('Add $a + $b = $addition\nSub $a - $b = $substraction');
}