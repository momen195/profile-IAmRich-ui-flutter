import 'package:flutter/material.dart';

void navigateTo(context, widget) => Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => widget,
      ),
    );

// ignore: non_constant_identifier_names
Widget MyDivider() => Container(
      height: 1.0,
      color: Colors.grey[300],
      width: double.infinity,
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  bool isPassword = false,
  final validate,
  final onChanged,
  final onSubmitted,
  final onTap,
  required String label,
  required IconData prefix,
  IconData? suffix,
  final suffixPressed,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      obscureText: isPassword,
      onChanged: onChanged,
      onTap: onTap,
      onFieldSubmitted: onSubmitted,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(prefix),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixPressed,
                icon: Icon(suffix),
              )
            : null,
        //border: InputBorder.none,
        border: OutlineInputBorder(),
      ),
      validator: validate,
    );

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUppercases = true,
  double radius = 0.0,
  double height = 40.0,
  required Function? function(),
  required String text,
}) =>
    Container(
      height: height,
      decoration: BoxDecoration(
          color: background,
          borderRadius: BorderRadiusDirectional.circular(radius)),
      width: width,
      child: MaterialButton(
        onPressed: function,
        child: Text(
          isUppercases ? text.toUpperCase() : text,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
