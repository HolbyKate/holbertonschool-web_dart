void outer(String name, String id) {
    // Call the inner function and store the result
    String innerResult = inner();
    //Split in 2 parts
    List<String> nameParts = name.split(' ');
    String firstName = nameParts[0];
    String lastInitial = nameParts[1][0];
    print('$innerResult $lastInitial.$firstName your id is $id');
}

// Return string before the split part and id
String inner() {
    return ('Hello Agent');
}
