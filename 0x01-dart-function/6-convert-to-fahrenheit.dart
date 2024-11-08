// Function that accepts a list of doubles representing a list of temperatures
// in celsius, converts them to fahrenheit and returns them in a list.
List<double> convertToF(List<double> temperaturesInC) {
    // Using map method
    return temperaturesInC.map((celsius) {
        // Make calcul to convert in fahrenheit
        double fahrenheit = (celsius * 9 / 5) + 32;
        // Return temperature with 2 decimal
        return double.parse(fahrenheit.toStringAsFixed(2));
        //Adding toList to convert map result
        }).toList();
}