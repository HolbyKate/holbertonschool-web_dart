// Return the longest no repeating substring

String longestUniqueSubstring(String str) {
    List<String> chars = str.split('');
    String current = '';
    String longest = '';

// Using string operation
    for (String char in chars) {
        current = current.substring(current.indexOf(char) + 1) + char;
        if (current.length > longest.length) longest = current;
    }

    return longest;
}
