import 'package:flrx_skeleton/pages/counter_page.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';

/// TODO(ibrahim-mubarak): Need better way of registering Handlers
Handler homeHandler = Handler(
    type: HandlerType.route,
    handlerFunc: (BuildContext context, Map<String, List<String>> params) =>
        CounterPage());
