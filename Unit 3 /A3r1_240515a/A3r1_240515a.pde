int cellSize = 50; // Size of each cell in the calendar
int[][] days = new int[6][7]; // 6 rows x 7 columns for the days
int currentYear, currentMonth, currentDay;
color[] monthColors; // Array to store background colors for each month
float rotationAngle = 0; // Rotation angle for the boxes

void setup() {
  size(400, 400, P3D); // Enable 3D rendering
  monthColors = new color[]{
    color(255, 0, 0),   // January - Red
    color(0, 255, 0),   // February - Green
    color(0, 0, 255),   // March - Blue
    color(255, 255, 0), // April - Yellow
    color(255, 0, 255), // May - Magenta
    color(0, 255, 255), // June - Cyan
    color(255, 128, 0), // July - Orange
    color(128, 0, 255), // August - Purple
    color(0, 255, 128), // September - Turquoise
    color(255, 0, 128), // October - Pink
    color(128, 255, 0), // November - Lime
    color(128, 128, 128)// December - Gray
  };
  updateDate();
}

void draw() {
  background(monthColors[currentMonth - 1]); // Set background color based on the month
  lights(); // Enable lighting for 3D effect
  translate(width/2, height/2); // Translate to the center of the window
  rotateX(-QUARTER_PI); // Rotate the calendar slightly for better view
  rotateY(rotationAngle); // Rotate the boxes around the y-axis
  displayCalendar();
  rotationAngle += 0.01; // Increment rotation angle
}

void updateDate() {
  currentYear = year();
  currentMonth = month();
  currentDay = day();

  int totalDays = daysInMonth(currentMonth, currentYear);
  int startDay = startingDayOfMonth(currentMonth, currentYear);

  int dayCount = 1;

  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 7; j++) {
      if (i == 0 && j < startDay) {
        days[i][j] = 0; // Blank space before the first day
      } else if (dayCount <= totalDays) {
        days[i][j] = dayCount; // Fill in the days
        dayCount++;
      } else {
        days[i][j] = 0; // Blank space after the last day
      }
    }
  }
}

void displayCalendar() {
  for (int i = 0; i < 6; i++) {
    for (int j = 0; j < 7; j++) {
      int x = (j - 3) * cellSize;
      int y = (i - 2) * cellSize;
      int z = 0;
      if (days[i][j] != 0) {
        if (days[i][j] == currentDay) {
          fill(255, 0, 0); // Highlight current day with red color
        } else {
          fill(255); // Other days are white
        }
        pushMatrix();
        translate(x, y, z);
        rotateY(rotationAngle); // Rotate the box around the y-axis
        box(cellSize); // Draw 3D box for each day
        popMatrix();
      }
    }
  }
}

int daysInMonth(int month, int year) {
  switch (month) {
    case 4: case 6: case 9: case 11:
      return 30;
    case 2:
      if (isLeapYear(year)) {
        return 29;
      } else {
        return 28;
      }
    default:
      return 31;
  }
}

boolean isLeapYear(int year) {
  return ((year % 4 == 0) && (year % 100 != 0)) || (year % 400 == 0);
}

int startingDayOfMonth(int month, int year) {
  int dayOfWeek = year()%7;
  return dayOfWeek;
}
