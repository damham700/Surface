import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors
  static const Color primaryRed = Color(0xFFE50914);
  static const Color primaryBlue = Color(0xFF113CCF);
  static const Color accentPurple = Color(0xFF7B2CBF);
  
  // Neutral Colors
  static const Color white = Color(0xFFFFFFFF);
  static const Color black = Color(0xFF000000);
  static const Color darkGrey = Color(0xFF1A1A1A);
  static const Color mediumGrey = Color(0xFF424242);
  static const Color lightGrey = Color(0xFFE0E0E0);
  static const Color veryLightGrey = Color(0xFFF5F5F5);
  
  // Status Colors
  static const Color success = Color(0xFF4CAF50);
  static const Color error = Color(0xFFf44336);
  static const Color warning = Color(0xFFFFC107);
  static const Color info = Color(0xFF2196F3);
  
  // Service Colors
  static const Color netflixRed = Color(0xFFE50914);
  static const Color disneyBlue = Color(0xFF113CCF);
  
  // Gradient Colors
  static const List<Color> premiumGradient = [primaryRed, accentPurple];
  static const List<Color> disneyGradient = [primaryBlue, Color(0xFF00A3E0)];
}
