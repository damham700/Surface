import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({Key? key}) : super(key: key);

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Support'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How can we help?',
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 16.h),
            SupportActionCard(
              icon: Icons.chat_outlined,
              title: 'Live Chat',
              description: 'Chat with our support team in real-time',
              onTap: () {
                // TODO: Navigate to live chat
              },
            ),
            SupportActionCard(
              icon: Icons.ticket_outlined,
              title: 'Support Ticket',
              description: 'Create a support ticket for your issue',
              onTap: () {
                // TODO: Navigate to create ticket
              },
            ),
            SupportActionCard(
              icon: Icons.help_outline,
              title: 'FAQ',
              description: 'Find answers to common questions',
              onTap: () {
                // TODO: Navigate to FAQ
              },
            ),
            SupportActionCard(
              icon: Icons.mail_outline,
              title: 'Email Support',
              description: 'support@surface.app',
              onTap: () {
                // TODO: Open email
              },
            ),
            SizedBox(height: 24.h),
            Text(
              'Frequently Asked Questions',
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 12.h),
            ExpansionTile(
              title: const Text('How do I reset my password?'),
              children: [
                Padding(
                  padding: EdgeInsets.all(12.w),
                  child: Text(
                    'You can reset your password by clicking on "Forgot Password" on the login screen. Follow the instructions sent to your email.',
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('What payment methods do you accept?'),
              children: [
                Padding(
                  padding: EdgeInsets.all(12.w),
                  child: Text(
                    'We currently accept payments through Bank of Khartoum via our authorized service agents.',
                    style: TextStyle(fontSize: 12.sp),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class SupportActionCard extends StatelessWidget {
  final IconData icon;
  final String title;
  final String description;
  final VoidCallback onTap;

  const SupportActionCard({
    Key? key,
    required this.icon,
    required this.title,
    required this.description,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 12.h),
      child: ListTile(
        leading: Icon(icon, color: const Color(0xFFE50914)),
        title: Text(title),
        subtitle: Text(description),
        trailing: const Icon(Icons.arrow_forward_ios, size: 14),
        onTap: onTap,
      ),
    );
  }
}
