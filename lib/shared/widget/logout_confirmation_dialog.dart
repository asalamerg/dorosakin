import 'package:flutter/material.dart';

// class LogoutConfirmationDialog extends StatelessWidget {
//   final VoidCallback onConfirm;
//
//   const LogoutConfirmationDialog({Key? key, required this.onConfirm}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Material(
//         color: Colors.transparent,
//         child: Container(
//           margin: const EdgeInsets.symmetric(horizontal: 30),
//           padding: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(16),
//           ),
//           child: Stack(
//             clipBehavior: Clip.none,
//             alignment: Alignment.topCenter,
//             children: [
//               Positioned(
//                 top: -40,
//                 child: CircleAvatar(
//                   radius: 30,
//                   backgroundColor: Colors.red,
//                   child: const Icon(Icons.logout, color: Colors.white, size: 28),
//                 ),
//               ),
//               Column(
//                 mainAxisSize: MainAxisSize.min,
//                 children: [
//                   const SizedBox(height: 10),
//                   const Text(
//                     "Do you want to log out?",
//                     style: TextStyle(fontSize: 16),
//                     textAlign: TextAlign.center,
//                   ),
//                   const SizedBox(height: 20),
//                   Row(
//                     children: [
//                       Expanded(
//                         child: ElevatedButton(
//                           onPressed: onConfirm,
//                           style: ElevatedButton.styleFrom(
//                             backgroundColor: Colors.red,
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                           child: const Text('Yes'),
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       Expanded(
//                         child: OutlinedButton(
//                           onPressed: () => Navigator.of(context).pop(),
//                           style: OutlinedButton.styleFrom(
//                             shape: RoundedRectangleBorder(
//                               borderRadius: BorderRadius.circular(8),
//                             ),
//                           ),
//                           child: const Text('Cancel'),
//                         ),
//                       ),
//                     ],
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

class LogoutConfirmationDialog extends StatelessWidget {
  final VoidCallback onConfirm;

  const LogoutConfirmationDialog({Key? key, required this.onConfirm}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 30),
          padding: const EdgeInsets.only(top: 50, left: 20, right: 20, bottom: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.topCenter,
            children: [
              Positioned(
                top: -40,
                child: CircleAvatar(
                  radius: 30,
                  backgroundColor: Colors.red,
                  child: const Icon(Icons.logout, color: Colors.white, size: 28),
                ),
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 10),
                  const Text(
                    "هل تريد تسجيل الخروج؟",
                    style: TextStyle(fontSize: 16),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: onConfirm,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text('نعم'),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: OutlinedButton(
                          onPressed: () => Navigator.of(context).pop(),
                          style: OutlinedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text('إلغاء'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


