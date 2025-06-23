import 'package:flutter/material.dart';

class CustomContainerService extends StatelessWidget {
  final Widget leading;
  final String title;
  final String subtitle;
  final VoidCallback? onTap;
  final Widget? trailing;

  CustomContainerService(
      {required this.leading,
      required this.title,
      required this.subtitle,
       this.onTap,
      this.trailing
      });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(title),
      subtitle: Text(
        subtitle,
        style: TextStyle(
          color: Colors.green, // هنا تعطي لون لل subtitle
        ),
      ),
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.zero),
      onTap: onTap,
      trailing: trailing,
    );
  }
}
