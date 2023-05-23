import 'package:data_connection_checker/data_connection_checker.dart';
import 'package:flutter/material.dart';
import 'package:inquize/provider/auth-provider.dart';
import 'package:inquize/provider/user.dart';
import 'package:inquize/routes.dart';
import 'package:inquize/screens/loading/loadingScreen.dart';
import 'package:inquize/theme.dart';
import 'package:provider/provider.dart';

import 'constants.dart';
import 'provider/network_status_service.dart';
import 'screens/check_Network/network_aware_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiProvider(
        providers: [
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => UserProvider()),
    ],
    child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'InQuize',
        theme: theme(),
        home: StreamProvider<NetworkStatus>(
            create: (context) =>
            NetworkStatusService().networkStatusController.stream,
            child: NetworkAwareWidget(
                onlineChild: LoadingScreen(), offlineChild: Scaffold(

              body: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.wifi_off,color: kPrimaryColor,
                      size: 150,
                    ),
                    SizedBox(
                      height: 12,
                    ),
                    Text(
                      'No Internet Connection', style: TextStyle(
                      color: kSecondaryColor,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    SizedBox(
                        height: 50,
                        width: 145,
                        child: RaisedButton.icon(
                            onPressed: () async {
                              DataConnectionStatus status =
                              await checkInternetStatus();
                              if (status == DataConnectionStatus.connected) {
                                Navigator.of(context).pushReplacementNamed('/loading');
                              }

                            },
                            icon: Icon(
                              Icons.refresh,
                            ),
                            color: Colors.transparent,
                            elevation: 0,
                            highlightColor: Colors.transparent,
                            highlightElevation: 0,
                            shape: RoundedRectangleBorder(
                                side: BorderSide(color: kPrimaryColor, width: 1.5),
                                borderRadius:
                                BorderRadius.all(Radius.circular(10.0))),
                            label: Text(
                                'Refresh',style:TextStyle(color:kTextColor)
                            ))

                    )
                  ],
                ),
              ),
            ),)),
        // We use routeName so that we dont need to remember the name
       // initialRoute: LoadingScreen.routeName,
        routes: routes,
      ),
    );
  }

  checkInternetStatus() async {

    return await DataConnectionChecker().connectionStatus;
  }
}
