// ignore_for_file: constant_identifier_names
import 'package:flutter/material.dart';

// ---- Utils folder contains the helpers, services, UI utils, mixins which are used throughout the application ----

enum Status { UNKNOWN, LOADING, SUCCESS, ERROR }

GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
