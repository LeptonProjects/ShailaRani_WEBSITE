import 'dart:html' as html;

import 'package:firebase_core/firebase_core.dart';
import 'package:shaila_rani_website/features/video_management/presentation/bloc/video_creator/video_creator_bloc.dart';
import 'package:shaila_rani_website/features/video_management/presentation/pages/widgets/video_widgets.dart';
import 'package:shaila_rani_website/injection_container.dart';
import 'package:shaila_rani_website/view/home/main_screen.dart';
import 'package:shaila_rani_website/view/widgets/scroll_on_web_widget.dart';

import 'firebase_options.dart';

Future<void> main() async {
  html.document.title = 'Adv. Shaila Rani';
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await initGetIt();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<VideoManagerBloc>(
            create: (context) =>
                sl<VideoManagerBloc>()..add(VideoManagerFetchEvent())),
        BlocProvider<VideoCreatorBloc>(
            create: (context) => sl<VideoCreatorBloc>()),
      ],
      child: MaterialApp(
        scrollBehavior: MyCustomScrollBehavior(),
        title: 'Adv Shaila Rani Associates',
        debugShowCheckedModeBanner: false,
        home: const MainScreen(),
      ),
    );
  }
}
