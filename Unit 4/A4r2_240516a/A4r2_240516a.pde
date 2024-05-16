 // I HAD TO MAKE THIS LIKE DESCRIPTION FOR WHAT ITS DOING AND HOW CAUSE I COULDNT EVEN FATHOM
 
 // This Processing sketch visualizes earthquake data fetched from the USGS Earthquake Hazards Program API.
 // It displays circles on the canvas, where each circle represents an earthquake, and the size of the circle
 // corresponds to the magnitude of the earthquake.
 // The earthquake data is fetched from the USGS Earthquake Hazards Program API at:
 // https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson
 // 1. The setup() function loads earthquake data from the API using loadJSONObject().
 // 2. The draw() function continuously draws circles representing earthquakes on the canvas.
 // 3. Each circle's size is determined by the earthquake magnitude.
 // 4. Additionally, a rippling effect is created around each earthquake circle.
 

import java.util.ArrayList;
import java.util.List;
import processing.data.JSONArray;
import processing.data.JSONObject;

List<Float> magnitudes = new ArrayList<Float>();
List<Ripple> ripples = new ArrayList<Ripple>();
int currentIndex = 0;
int drawInterval = 100; // Increase this value to slow down the drawing

void setup() {
  size(800, 600);
  loadDataFromGov();
}

void draw() {
  background(255);
  if (frameCount % drawInterval == 0 && magnitudes.size() > 0) {
    drawEarthquake(currentIndex);
    currentIndex = (currentIndex + 1) % magnitudes.size(); // Wrap around to the beginning
  }
  
  for (int i = ripples.size() - 1; i >= 0; i--) {
    Ripple ripple = ripples.get(i);
    ripple.update();
    ripple.display();
    if (ripple.alpha <= 0) {
      ripples.remove(i);
    }
  }
}

void loadDataFromGov() {
  String url = "https://earthquake.usgs.gov/earthquakes/feed/v1.0/summary/all_hour.geojson";
  JSONObject data = loadJSONObject(url);
  
  JSONArray features = data.getJSONArray("features");
  
  println("Number of earthquakes loaded: " + features.size()); // Print the number of earthquakes loaded
  
  for (int i = 0; i < features.size(); i++) {
    JSONObject quake = features.getJSONObject(i);
    JSONObject properties = quake.getJSONObject("properties");
    float magnitude = properties.getFloat("mag");
    magnitudes.add(magnitude);
  }
  
  println("Number of earthquake magnitudes: " + magnitudes.size()); // Print the number of earthquake magnitudes loaded
}

void drawEarthquake(int index) {
  float magnitude = magnitudes.get(index);
  float x = random(width);
  float y = random(height);
  float diameter = magnitude * 20; // Adjust for larger visualization
  
  fill(255, 0, 0, 150); // Red with transparency
  noStroke();
  ellipse(x, y, diameter, diameter);
  
  ripples.add(new Ripple(x, y, diameter));
}

class Ripple {
  float x, y, diameter, alpha;
  
  Ripple(float x, float y, float diameter) {
    this.x = x;
    this.y = y;
    this.diameter = diameter;
    this.alpha = 255;
  }
  
  void update() {
    alpha -= 2; // Decrease alpha to fade out
  }
  
  void display() {
    noFill();
    stroke(255, 0, 0, alpha);
    ellipse(x, y, diameter, diameter);
  }
}
