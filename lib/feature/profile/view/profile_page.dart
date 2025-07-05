import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dorosakin/feature/profile/view/item_profile.dart';
import 'package:dorosakin/shared/app_theme/app_theme.dart';
import 'package:dorosakin/feature/auth/view_model/auth_cubit.dart';
import 'package:dorosakin/feature/auth/view_model/auth_state.dart';

import '../../../shared/widget/logout_confirmation_dialog.dart';

// class ProfilePage extends StatelessWidget {
//   const ProfilePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final authCubit = context.read<AuthCubit>();
//
//     return Padding(
//       padding: EdgeInsets.all(16.w),
//       child: BlocListener<AuthCubit, AuthState>(
//         listener: (context, state) {
//           if (state is LogoutSuccess) {
//             Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
//           }
//         },
//         child: ListView(
//           children: [
//             SizedBox(height: 30.h),
//             Text(
//               "Hi, User 👋",
//               style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 25.h),
//             Text(
//               "Profile",
//               style: TextStyle(fontSize: 18.sp, color: Colors.grey),
//             ),
//             SizedBox(height: 14.h),
//             _buildProfileHeader(),
//             SizedBox(height: 24.h),
//             _buildProfileItems(context, authCubit),
//           ],
//         ),
//       ),
//     );
//   }
//
//   Widget _buildProfileHeader() {
//     return Row(
//       children: [
//         Image.asset(
//           "assets/image/profile.png",
//           width: 117.w,
//           height: 117.h,
//         ),
//         SizedBox(width: 16.w),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text(
//               "Dorosak",
//               style: AppTheme.listTheme.textTheme.displayMedium,
//             ),
//             Text(
//               "dorosak@gmail.com",
//               style: AppTheme.listTheme.textTheme.displaySmall,
//             ),
//           ],
//         )
//       ],
//     );
//   }
//
//   Widget _buildProfileItems(BuildContext context, AuthCubit authCubit) {
//     return Column(
//       children: [
//         ItemProfile(
//           image: "Edit",
//           title: "Edit Profile",
//           onPressed: () {
//             Navigator.pushNamed(context, '/edit-profile');
//           },
//           trailingIcon: Icons.arrow_forward,
//         ),
//         ItemProfile(
//           image: "lessno",
//           title: "Your lessons",
//           onPressed: () {
//             Navigator.pushNamed(context, '/lessons');
//           },
//           trailingIcon: Icons.arrow_forward,
//         ),
//         ItemProfile(
//           image: "subscription",
//           title: "Subscription",
//           onPressed: () {
//             Navigator.pushNamed(context, '/subscription');
//           },
//           trailingIcon: Icons.arrow_forward,
//         ),
//         ItemProfile(
//           image: "Language",
//           title: "Language",
//           onPressed: () {
//             Navigator.pushNamed(context, '/language');
//           },
//         ),
//         ItemProfile(
//           image: "about",
//           title: "About us",
//           onPressed: () {
//             Navigator.pushNamed(context, '/about');
//           },
//           trailingIcon: Icons.arrow_forward,
//         ),
//         ItemProfile(
//           image: "Help",
//           title: "Help",
//           onPressed: () {
//             Navigator.pushNamed(context, '/help');
//           },
//           trailingIcon: Icons.arrow_forward,
//         ),
//         ItemProfile(
//           image: "Terms",
//           title: "Terms & Conditions",
//           onPressed: () {
//             Navigator.pushNamed(context, '/terms');
//           },
//           trailingIcon: Icons.arrow_forward,
//         ),
//         ItemProfile(
//           image: "Logout",
//           title: "Logout",
//           onPressed: () {
//             showDialog(
//               context: context,
//               builder: (context) => LogoutConfirmationDialog(
//                 onConfirm: () {
//                   authCubit.logout();
//                 },
//               ),
//             );
//           },
//         ),
//       ],
//     );
//   }
// }




class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final authCubit = context.read<AuthCubit>();

    return Padding(
      padding: EdgeInsets.all(16.w),
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is LogoutSuccess) {
            Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
          }
        },
        child: ListView(
          children: [
            SizedBox(height: 30.h),
            Text(
              "Hi, User 👋",
              style: TextStyle(fontSize: 24.sp, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25.h),
            Text(
              "Profile",
              style: TextStyle(fontSize: 18.sp, color: Colors.grey),
            ),
            SizedBox(height: 14.h),
            _buildProfileHeader(),
            SizedBox(height: 24.h),
            _buildProfileItems(context, authCubit),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Row(
      children: [
        Image.asset(
          "assets/image/profile.png",
          width: 117.w,
          height: 117.h,
        ),
        SizedBox(width: 16.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Dorosak",
              style: AppTheme.listTheme.textTheme.displayMedium,
            ),
            Text(
              "dorosak@gmail.com",
              style: AppTheme.listTheme.textTheme.displaySmall,
            ),
          ],
        )
      ],
    );
  }

  Widget _buildProfileItems(BuildContext context, AuthCubit authCubit) {
    return Column(
      children: [
        ItemProfile(
          image: "Edit",
          title: "Edit Profile",
          onPressed: () {
            Navigator.pushNamed(context, '/edit-profile');
          },
          trailingIcon: Icons.arrow_forward,
        ),
        ItemProfile(
          image: "lessno",
          title: "Your lessons",
          onPressed: () {
            Navigator.pushNamed(context, '/lessons');
          },
          trailingIcon: Icons.arrow_forward,
        ),
        ItemProfile(
          image: "subscription",
          title: "Subscription",
          onPressed: () {
            Navigator.pushNamed(context, '/subscription');
          },
          trailingIcon: Icons.arrow_forward,
        ),
        ItemProfile(
          image: "Language",
          title: "Language",
          onPressed: () {
            Navigator.pushNamed(context, '/language');
          },
        ),
        ItemProfile(
          image: "about",
          title: "About us",
          onPressed: () {
            Navigator.pushNamed(context, '/about');
          },
          trailingIcon: Icons.arrow_forward,
        ),
        ItemProfile(
          image: "Help",
          title: "Help",
          onPressed: () {
            Navigator.pushNamed(context, '/help');
          },
          trailingIcon: Icons.arrow_forward,
        ),
        ItemProfile(
          image: "Terms",
          title: "Terms & Conditions",
          onPressed: () {
            Navigator.pushNamed(context, '/terms');
          },
          trailingIcon: Icons.arrow_forward,
        ),
        ItemProfile(
          image: "Logout",
          title: "Logout",
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => LogoutConfirmationDialog(
                onConfirm: () {
                  // تمرير التوكن الموجود في authCubit عند استدعاء logout
                  authCubit.logout();
                  Navigator.of(context).pop(); // لإغلاق مربع الحوار
                },
              ),
            );
          },
        ),
      ],
    );
  }
}

