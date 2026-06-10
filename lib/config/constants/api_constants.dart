class ApiConstants {
  static const String baseUrl = 'https://api.surface.app/v1';
  
  // Auth Endpoints
  static const String login = '/auth/login';
  static const String register = '/auth/register';
  static const String refreshToken = '/auth/refresh';
  static const String logout = '/auth/logout';
  
  // Subscription Endpoints
  static const String getSubscriptions = '/subscriptions';
  static const String getPlans = '/subscriptions/plans';
  static const String createSubscription = '/subscriptions/create';
  static const String cancelSubscription = '/subscriptions/cancel';
  static const String renewSubscription = '/subscriptions/renew';
  
  // Payment Endpoints
  static const String initiatePayment = '/payments/initiate';
  static const String confirmPayment = '/payments/confirm';
  static const String getPaymentStatus = '/payments/status';
  static const String getTransactionHistory = '/payments/history';
  
  // User Endpoints
  static const String getUserProfile = '/users/profile';
  static const String updateUserProfile = '/users/profile/update';
  static const String deleteAccount = '/users/account/delete';
  
  // Support Endpoints
  static const String createTicket = '/support/tickets';
  static const String getTickets = '/support/tickets';
  static const String updateTicket = '/support/tickets/update';
  
  // Timeouts
  static const Duration connectTimeout = Duration(seconds: 30);
  static const Duration receiveTimeout = Duration(seconds: 30);
}
