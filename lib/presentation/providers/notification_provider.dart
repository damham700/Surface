import 'package:flutter/material.dart';

class NotificationProvider extends ChangeNotifier {
  bool _notificationsEnabled = true;
  List<Map<String, dynamic>> _notifications = [];
  
  bool get notificationsEnabled => _notificationsEnabled;
  List<Map<String, dynamic>> get notifications => _notifications;
  
  void toggleNotifications(bool value) {
    _notificationsEnabled = value;
    notifyListeners();
  }
  
  void addNotification(Map<String, dynamic> notification) {
    _notifications.add(notification);
    notifyListeners();
  }
  
  void removeNotification(int index) {
    _notifications.removeAt(index);
    notifyListeners();
  }
}
