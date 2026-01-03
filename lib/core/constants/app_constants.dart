class UIConstants {
  // Padding & Margins
  static const double defaultPadding = 16.0;
  static const double smallPadding = 8.0;
  static const double largePadding = 24.0;

  // Border Radius
  static const double defaultBorderRadius = 12.0;
  static const double smallBorderRadius = 8.0;
  static const double largeBorderRadius = 16.0;

  // Icon sizes
  static const double smallIcon = 16.0;
  static const double defaultIcon = 24.0;
  static const double largeIcon = 32.0;

  // Font sizes
  static const double bodyFontSize = 14.0;
  static const double headingFontSize = 20.0;
  static const double titleFontSize = 24.0;
}

class AppConstants {
  // API endpoints
  static const String baseUrl = 'https://your-api.com';

  // Database
  static const String dbName = 'smart_study_planner.db';
  static const int dbVersion = 1;

  // Firebase
  static const String firebaseProjectId = 'your-project-id';

  // Duration
  static const Duration animationDuration = Duration(milliseconds: 300);

  // Validation
  static const int minPasswordLength = 6;
  static const int maxNameLength = 50;
}

class RegexPatterns {
  static const String emailPattern =
      r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';

  static const String passwordPattern =
      r'^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$';
}

class TaskPriorities {
  static const String critical = 'critical';
  static const String high = 'high';
  static const String medium = 'medium';
  static const String low = 'low';

  static const List<String> all = [critical, high, medium, low];
}

class TaskStatus {
  static const String todo = 'todo';
  static const String inProgress = 'in_progress';
  static const String completed = 'completed';

  static const List<String> all = [todo, inProgress, completed];
}

class UserRoles {
  static const String admin = 'admin';
  static const String student = 'student';
  static const String teacher = 'teacher';

  static const List<String> all = [admin, student, teacher];
}

class NotificationTypes {
  static const String alert = 'alert';
  static const String reminder = 'reminder';
  static const String deadline = 'deadline';
  static const String message = 'message';

  static const List<String> all = [alert, reminder, deadline, message];
}
