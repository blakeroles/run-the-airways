class Athlete {
  // Profile information
  String firstName;
  String imageUrl;
  String city;
  String state;
  String country;
  String measurementPreference;

  // Progress information (api provides information in metric)
  double runYearlyKms;
  double runAllTimeKms;

  // Goal information
  // bool isYearlyGoalSet;
  // bool isAllTimeGoalSet;
  // double runYearlyKmsGoal;
  // double runAllTimeKmsGoal;

  // Constructor
  Athlete(
      String firstName,
      String imageUrl,
      String city,
      String state,
      String country,
      String measurementPref,
      double runYearlyKms,
      double runAllTimeKms) {
    this.firstName = firstName;
    this.imageUrl = imageUrl;
    this.city = city;
    this.state = state;
    this.country = country;
    this.measurementPreference = measurementPref;
    this.runYearlyKms = runYearlyKms;
    this.runAllTimeKms = runAllTimeKms;
  }

  // Getters
  String getFirstName() {
    return this.firstName;
  }

  String getImageUrl() {
    return this.imageUrl;
  }

  String getCity() {
    return this.city;
  }

  String getState() {
    return this.state;
  }

  String getCountry() {
    return this.country;
  }

  String getMeasurementPref() {
    return this.measurementPreference;
  }

  double getRunYearlyKms() {
    return this.runYearlyKms;
  }

  double getRunAllTimeKms() {
    return this.runAllTimeKms;
  }

  // Setters
  void setFirstName(String fName) {
    this.firstName = fName;
  }

  void setImageUrl(String imgUrl) {
    this.imageUrl = imgUrl;
  }

  void setCity(String scity) {
    this.city = scity;
  }

  void setState(String sstate) {
    this.state = sstate;
  }

  void setCountry(String scountry) {
    this.country = scountry;
  }

  void setMeasurementPref(String mp) {
    this.measurementPreference = mp;
  }

  void setRunYearlyKms(double runyrkms) {
    this.runYearlyKms = runyrkms;
  }

  void setRunAllTimeKms(double runatkms) {
    this.runAllTimeKms = runatkms;
  }
}
