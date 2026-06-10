import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ActiveSubscriptionsScreen extends StatelessWidget {
  const ActiveSubscriptionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Active Subscriptions'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.w),
        children: [
          SubscriptionStatusCard(
            service: 'Netflix',
            plan: 'Standard',
            price: '\$15.49',
            renewalDate: 'July 15, 2024',
            status: 'Active',
            color: const Color(0xFFE50914),
            onManage: () {
              // TODO: Manage subscription
            },
          ),
          SizedBox(height: 16.h),
          SubscriptionStatusCard(
            service: 'Disney+',
            plan: 'Premium',
            price: '\$13.99',
            renewalDate: 'July 20, 2024',
            status: 'Active',
            color: const Color(0xFF113CCF),
            onManage: () {
              // TODO: Manage subscription
            },
          ),
        ],
      ),
    );
  }
}

class SubscriptionStatusCard extends StatelessWidget {
  final String service;
  final String plan;
  final String price;
  final String renewalDate;
  final String status;
  final Color color;
  final VoidCallback onManage;

  const SubscriptionStatusCard({
    Key? key,
    required this.service,
    required this.plan,
    required this.price,
    required this.renewalDate,
    required this.status,
    required this.color,
    required this.onManage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  service,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                  decoration: BoxDecoration(
                    color: Colors.green.shade100,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(
                      fontSize: 10.sp,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Text(
              plan,
              style: TextStyle(
                fontSize: 12.sp,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 12.h),
            Divider(height: 16.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Amount',
                      style: TextStyle(
                        fontSize: 11.sp,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Renews On',
                      style: TextStyle(
                        fontSize: 11.sp,
                        color: Colors.grey,
                      ),
                    ),
                    Text(
                      renewalDate,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 12.h),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: onManage,
                child: const Text('Manage'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
