// Return the area of a triangle
double calculateArea(double height, double base) {
    // define double area
    double area = 0.5 * base * height;
    // Return with 2 decimal
    return double.parse(area.toStringAsFixed(2));
}