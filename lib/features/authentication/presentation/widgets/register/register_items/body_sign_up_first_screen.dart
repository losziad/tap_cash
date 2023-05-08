// import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:tab_cash/core/utils/constants.dart';
// import 'package:tab_cash/features/authentication/presention/manger/register_cubit/register_cubit.dart';
// import 'package:tab_cash/features/authentication/presention/manger/register_cubit/register_states.dart';
// import 'package:tab_cash/features/authentication/presention/widgets/register/register_items/description_tap_cash.dart';
// import 'package:tab_cash/features/authentication/presention/widgets/register/register_items/require_password_text.dart';
// import 'package:tab_cash/features/authentication/presention/widgets/register/register_second_screen_otp.dart';
// import 'package:tab_cash/shared/components/components.dart';
//
// Widget bodySignUpFirstScreen(BuildContext context)
// {
//   var cubit=RegisterCubit.get(context);
//
//   var formKey=GlobalKey<FormState>();
//   var firstNameController=TextEditingController();
//   var lastNameController=TextEditingController();
//   var emailController=TextEditingController();
//   var passwordController=TextEditingController();
//   var phoneController=TextEditingController();
//   var userNameController=TextEditingController();
//
//   return BlocConsumer<RegisterCubit, RegisterStates>
//     (builder: (context, state) {
//       return Expanded(
//         child: SingleChildScrollView(
//           physics: BouncingScrollPhysics(),
//           child: Form(
//             key: formKey,
//             child: Center(
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 18.0,
//                     ),
//                     child: Row(
//                       children: [
//                         Text(
//                           'Let\'s get to know you',
//                           textAlign: TextAlign.start,
//                           style: kTextStyleHeader,
//                         ),
//                       ],
//                     ),
//                   ),
//                   SizedBox(
//                     height: 30.0,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(16.0),
//                     child: Column(
//                       children: [
//                         Row(
//                           children: [
//                             Text(
//                               'Your legal first name',
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 6.0,
//                         ),
//                         defaultTextFormField(
//                           text: '   Enter your legal first name',
//                           validate: (value)
//                           {
//                             if(value!.isEmpty)
//                               {
//                                 return ('please enter your first name');
//                               }
//                             return null;
//                           },
//                           controller: firstNameController,
//                           keyboardType: TextInputType.name,
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               'Your legal last name',
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 6.0,
//                         ),
//                         defaultTextFormField(
//                           text: '   Enter your legal last name',
//                           validate: (value)
//                           {
//                             if(value!.isEmpty)
//                             {
//                               return ('please enter your last name');
//                             }
//                             return null;
//                           },
//                           controller: lastNameController,
//                           keyboardType: TextInputType.name,
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               'Mobile number',
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 6.0,
//                         ),
//                         defaultTextFormField(
//                           text: '   Enter your mobile number',
//                           validate: (value)
//                           {
//                             if(value!.isEmpty)
//                             {
//                               return ('please enter your phone number');
//                             }
//                             return null;
//                           },
//                           controller: phoneController,
//                           keyboardType: TextInputType.number,
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           children: [
//                             Text(
//                               'Password',
//                             ),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 6.0,
//                         ),
//                         defaultTextFormField(
//                           text: '   Enter your password',
//                           validate: (value)
//                           {
//                             if(value!.isEmpty)
//                             {
//                               return ('password too short');
//                             }
//                             return null;
//                           },
//                           controller: passwordController,
//                           keyboardType: TextInputType.visiblePassword,
//                           prefix: Icons.visibility_outlined,
//                           suffix: cubit.suffix,
//                           isPassword: cubit.isPassword,
//                         ),
//                         SizedBox(
//                           height: 5.0,
//                         ),
//                         Row(
//                           children: [
//                             requiredPasswordText(),
//                           ],
//                         ),
//                         SizedBox(
//                           height: 55.0,
//                         ),
//                         ConditionalBuilder(
//                             condition: state is! RegisterLoadingState,
//                             builder: (context) => defaultButton(
//                               text: 'Continue',
//                               textColor: Colors.white,
//                               function: ()
//                               {
//                                 if(formKey.currentState!.validate())
//                                   {
//                                     cubit.register(
//                                         firstName: firstNameController.text,
//                                         lastName: lastNameController.text,
//                                         email: emailController.text,
//                                         phone: phoneController.text,
//                                         userName: userNameController.text,
//                                         password: passwordController.text,
//                                     );
//                                   }
//                               },
//                               color: kDefaultButtonColor,
//                             ),
//                             fallback:(context) => Center(child: CircularProgressIndicator(),),
//                         ),
//                         SizedBox(
//                           height: 20.0,
//                         ),
//                         Container(
//                           height: 60.0,
//                           width: double.infinity,
//                           decoration: BoxDecoration(
//                             color: kContainerSignUpColor,
//                             borderRadius: BorderRadius.circular(15.0),
//                           ),
//                           child: Padding(
//                             padding: const EdgeInsets.all(15.0),
//                             child: Text(
//                               '88% of parents said their children are more money confident since using Tap Cash',
//                               style: TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 14.5,
//                               ),
//                             ),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 25.0,
//                         ),
//                         descriptionTapCash(),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       );
//     }, listener:(context, state) {
//        if(state is SuccessRegisterState){
//          navigateTo(context, RegisterSecondScreenOTP());
//        }
//     },
//   );
// }