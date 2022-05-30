import 'package:awesome_snackbar_content/awesome_snackbar_content.dart';
import 'package:flutter/material.dart';

class CustomSnackbar {
  static SnackBar successSnackBar = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    dismissDirection: DismissDirection.horizontal,
    content: AwesomeSnackbarContent(
      title: 'Success!',
      message: 'Sign in successful',
      contentType: ContentType.success,
    ),
  );
  static SnackBar failureSnackBar = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    dismissDirection: DismissDirection.horizontal,
    content: AwesomeSnackbarContent(
      title: 'Oh Snap!',
      message:
          'Invalid credentials. Please double check your username and password',
      contentType: ContentType.failure,
    ),
  );
  static SnackBar warningSnackBar = SnackBar(
    elevation: 0,
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    dismissDirection: DismissDirection.horizontal,
    content: AwesomeSnackbarContent(
      title: 'Oh Snap!',
      message: 'Username or password is empty',
      contentType: ContentType.warning,
    ),
  );
}
