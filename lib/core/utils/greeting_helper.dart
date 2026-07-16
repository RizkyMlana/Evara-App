class GreetingHelper {
  GreetingHelper._();

  static String getGreeting() {
    final hour = DateTime.now().hour;
    if(hour < 12) {
      return "Good Morning";
    }
    else if(hour < 15) {
      return "Good Afternoon";
    }
    else if (hour < 18) {
      return "Good Evening";
    }
    else {
      return "Good Night";
    }
  }
}