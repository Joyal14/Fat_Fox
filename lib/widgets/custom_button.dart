import 'package:flutter/material.dart';

// class CustomElevatedButton extends StatelessWidget {
//   final BuildContext context;
//   final String label;
//   final VoidCallback onPressed;
//   final Color color;
//   final Icon? icon;

//   const CustomElevatedButton({
//     Key? key,
//     required this.context,
//     required this.label,
//     required this.onPressed,
//     required this.color,
//     this.icon,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: color,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(10.0),
//         ),
//         minimumSize: const Size(380, 60),
//       ),
//       onPressed: onPressed,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           if (icon != null) // Show icon only if it is not null
//             Padding(
//               padding: const EdgeInsets.only(right: 8.0),
//               child: icon,
//             ),
//           Text(
//             label,
//             style: const TextStyle(color: Colors.white, fontSize: 16),
//           ),
//         ],
//       ),
//     );
//   }
// }

class CustomElevatedButton extends StatelessWidget {
  final BuildContext context;
  final String? label; // Make label nullable
  final VoidCallback onPressed;
  final Color color;
  final Icon? icon;

  const CustomElevatedButton({
    Key? key,
    required this.context,
    this.label, // Make label nullable
    required this.onPressed,
    required this.color,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        minimumSize: const Size(380, 60),
      ),
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) // Show icon only if it is not null
            Padding(
              padding: const EdgeInsets.only(right: 2.0),
              child: icon!,
            ),
          if (label != null) // Show label only if it is not null
            Text(
              label!,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
        ],
      ),
    );
  }
}
