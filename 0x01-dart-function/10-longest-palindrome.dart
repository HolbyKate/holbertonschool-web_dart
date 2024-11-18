// Function that return the longest Palindrome

// We need to implement isPalindrome first
bool isPalindrome(String s) {
    //Verify if teh string is less than 3 characters
    if (s.length < 3) {
        return false;
    }
        return s == s.split('').reversed.join('');
}

String longestPalindrome(String s) {
    if (s.length < 3) {
    return 'none';
    }
    String max = '';
// Generate all possible substrings of length >= 3
    for (int i = 0; i < s.length - 2; i++) {
        for (int j = i + 3; j <= s.length; j++) {
        String substring = s.substring(i, j);
        // Check if current substring is palindrome and longer than current longest
        if (isPalindrome(substring) && substring.length > max.length) {
            max = substring;
            }
    }
}

  // If no palindrome found, return 'none'
    return max.isEmpty ? 'none' : max;
}
