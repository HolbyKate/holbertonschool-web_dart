// Function that accepts one argument string and return True if is Palindrome

bool isPalindrome(String s) {
    //Verify if teh string is less than 3 characters
    if (s.length < 3) {
        return false;
    }
        return s == s.split('').reversed.join('');
}