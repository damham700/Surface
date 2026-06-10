import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SubscriptionPlansScreen extends StatefulWidget {
  final String service; // 'netflix' or 'disney'

  const SubscriptionPlansScreen({Key? key, required this.service})
      : super(key: key);

  @override
  State<SubscriptionPlansScreen> createState() =>
      _SubscriptionPlansScreenState();
}

class _SubscriptionPlansScreenState extends State<SubscriptionPlansScreen> {
  int _selectedPlanIndex = 0;

  final List<SubscriptionPlan> plans = [
    SubscriptionPlan(
      name: 'Basic',
      price: '9.99',
      period: 'month',
      features: ['HD Resolution', '1 Screen', 'Standard Quality'],
      recommended: false,
    ),
    SubscriptionPlan(
      name: 'Standard',
      price: '15.49',
      period: 'month',
      features: ['Full HD', '2 Screens', 'HD Quality'],
      recommended: true,
    ),
    SubscriptionPlan(
      name: 'Premium',
      price: '19.99',
      period: 'month',
      features: ['4K', '4 Screens', '4K Quality'],
      recommended: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${widget.service.toUpperCase()} Plans'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.all(16.w),
              itemCount: plans.length,
              itemBuilder: (context, index) {
                final plan = plans[index];
                final isSelected = _selectedPlanIndex == index;

                return GestureDetector(
                  onTap: () {
                    setState(() => _selectedPlanIndex = index);
                  },
                  child: PlanCard(
                    plan: plan,
                    isSelected: isSelected,
                    onTap: () {
                      setState(() => _selectedPlanIndex = index);
                    },
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.all(16.w),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      // TODO: Navigate to payment
                    },
                    child: const Text('Continue to Payment'),
                  ),
                ),
                SizedBox(height: 12.h),
                Center(
                  child: Text(
                    'Subscription renews monthly',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SubscriptionPlan {
  final String name;
  final String price;
  final String period;
  final List<String> features;
  final bool recommended;

  SubscriptionPlan({
    required this.name,
    required this.price,
    required this.period,
    required this.features,
    required this.recommended,
  });
}

class PlanCard extends StatelessWidget {
  final SubscriptionPlan plan;
  final bool isSelected;
  final VoidCallback onTap;

  const PlanCard({
    Key? key,
    required this.plan,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(bottom: 16.h),
        padding: EdgeInsets.all(16.w),
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFFE50914) : Colors.white,
          border: Border.all(
            color: isSelected
                ? const Color(0xFFE50914)
                : Colors.grey.shade300,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  plan.name,
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
                if (plan.recommended)
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      color: isSelected
                          ? Colors.white
                          : const Color(0xFFE50914),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      'Recommended',
                      style: TextStyle(
                        fontSize: 10.sp,
                        fontWeight: FontWeight.bold,
                        color: isSelected
                            ? const Color(0xFFE50914)
                            : Colors.white,
                      ),
                    ),
                  ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              children: [
                Text(
                  '\$${plan.price}',
                  style: TextStyle(
                    fontSize: 24.sp,
                    fontWeight: FontWeight.bold,
                    color: isSelected ? Colors.white : Colors.black,
                  ),
                ),
                SizedBox(width: 4.w),
                Text(
                  '/${plan.period}',
                  style: TextStyle(
                    fontSize: 14.sp,
                    color: isSelected ? Colors.white70 : Colors.grey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.h),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: plan.features
                  .map(
                    (feature) => Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: Row(
                        children: [
                          Icon(
                            Icons.check_circle,
                            size: 16.sp,
                            color: isSelected
                                ? Colors.white
                                : const Color(0xFFE50914),
                          ),
                          SizedBox(width: 8.w),
                          Text(
                            feature,
                            style: TextStyle(
                              fontSize: 12.sp,
                              color:
                                  isSelected ? Colors.white : Colors.black87,
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
