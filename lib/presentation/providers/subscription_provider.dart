import 'package:flutter/material.dart';

class SubscriptionProvider extends ChangeNotifier {
  bool _isLoading = false;
  List<dynamic> _subscriptions = [];
  List<dynamic> _plans = [];
  String? _errorMessage;
  
  bool get isLoading => _isLoading;
  List<dynamic> get subscriptions => _subscriptions;
  List<dynamic> get plans => _plans;
  String? get errorMessage => _errorMessage;
  
  Future<void> fetchSubscriptions() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();
    
    try {
      // TODO: Implement fetch subscriptions logic
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
  
  Future<void> fetchPlans() async {
    _isLoading = true;
    _errorMessage = null;
    notifyListeners();
    
    try {
      // TODO: Implement fetch plans logic
    } catch (e) {
      _errorMessage = e.toString();
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }
}
