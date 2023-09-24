class Rectangle {
  int _width = 0; // Private Field (can't be accessed from outside the class)
  int _height = 0; // Private Field (can't be accessed from outside the class)

  // Getter
  int get width => _width; // Get width (return _width)

  // Setter
  set width(int value) => _width = value; // Set width (set _width to value)

  // Getter
  int get height => _height; // Get height (return _height)

  // Setter
  set height (int value) => _height = value; // Set height (set _height to value)

  // Getter
  int get area => _width * _height; // Get area (return _width * _height)

  @override
  String toString() {
    return 'Rectangle: width = $_width, height = $_height';
  }

}