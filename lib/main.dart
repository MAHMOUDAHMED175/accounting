import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/features/home_screen/presentation/view/screens/home_screen.dart';
import 'package:accounting/features/home_screen/presentation/view_model/home_screen_cubit.dart';
import 'package:accounting/features/restaurant/presentation/view_model/reastaurant_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => HomeScreenCubit()),
        BlocProvider(create: (context) => RestaurantCubit()),
      ],
      child: MaterialApp(
        title: 'Accounting',
        localizationsDelegates: const [
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', 'US'), // اتجاه من اليسار إلى اليمين (LTR)
          Locale('ar', 'SA'), // اتجاه من اليمين إلى اليسار (RTL)
        ],
        locale: const Locale('ar', 'SA'),
        // اختر اللغة والدولة المناسبة
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: ColorManager.grey200),
          useMaterial3: true,
        ),

        home: const HomeScreen(),
        // onGenerateRoute: RouteGenerator.getRoute,
        // initialRoute: Routes.splashRoute,
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

// Create a class to hold your hierarchical data (optional, could be a Map or
// any other data structure that's capable of representing hierarchical data).
class MyNode {
  const MyNode({
    required this.title,
    this.children = const <MyNode>[],
  });

  final String title;
  final List<MyNode> children;
}

class MyTreeView extends StatefulWidget {
  const MyTreeView({super.key});

  @override
  State<MyTreeView> createState() => _MyTreeViewState();
}

class _MyTreeViewState extends State<MyTreeView> {
  // In this example a static nested tree is used, but your hierarchical data
  // can be composed and stored in many different ways.
  static const List<MyNode> roots = <MyNode>[
    MyNode(
      title: 'Root 1',
      children: <MyNode>[
        MyNode(
          title: 'Node 1.1',
          children: <MyNode>[
            MyNode(title: 'Node 1.1.1'),
            MyNode(title: 'Node 1.1.2'),
          ],
        ),
        MyNode(title: 'Node 1.2'),
      ],
    ),
    MyNode(
      title: 'Root 2',
      children: <MyNode>[
        MyNode(
          title: 'Node 2.1',
          children: <MyNode>[
            MyNode(title: 'Node 2.1.1'),
          ],
        ),
        MyNode(title: 'Node 2.2')
      ],
    ),
  ];

  // This controller is responsible for both providing your hierarchical data
  // to tree views and also manipulate the states of your tree nodes.
  late final TreeController<MyNode> treeController;

  @override
  void initState() {
    super.initState();
    treeController = TreeController<MyNode>(
      // Provide the root nodes that will be used as a starting point when
      // traversing your hierarchical data.
      roots: roots,
      // Provide a callback for the controller to get the children of a
      // given node when traversing your hierarchical data. Avoid doing
      // heavy computations in this method, it should behave like a getter.
      childrenProvider: (MyNode node) => node.children,
    );
  }

  @override
  void dispose() {
    // Remember to dispose your tree controller to release resources.
    treeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // This package provides some different tree views to customize how
    // your hierarchical data is incorporated into your app. In this example,
    // a TreeView is used which has no custom behaviors, if you wanted your
    // tree nodes to animate in and out when the parent node is expanded
    // and collapsed, the AnimatedTreeView could be used instead.
    //
    // The tree view widgets also have a Sliver variant to make it easy
    // to incorporate your hierarchical data in sophisticated scrolling
    // experiences.
    return TreeView<MyNode>(
      // This controller is used by tree views to build a flat representation
      // of a tree structure so it can be lazy rendered by a SliverList.
      // It is also used to store and manipulate the different states of the
      // tree nodes.
      treeController: treeController,
      // Provide a widget builder callback to map your tree nodes into widgets.
      nodeBuilder: (BuildContext context, TreeEntry<MyNode> entry) {
        // Provide a widget to display your tree nodes in the tree view.
        //
        // Can be any widget, just make sure to include a [TreeIndentation]
        // within its widget subtree to properly indent your tree nodes.
        return MyTreeTile(
          // Add a key to your tiles to avoid syncing descendant animations.
          key: ValueKey(entry.node),
          // Your tree nodes are wrapped in TreeEntry instances when traversing
          // the tree, these objects hold important details about its node
          // relative to the tree, like: expansion state, level, parent, etc.
          //
          // TreeEntrys are short lived, each time TreeController.rebuild is
          // called, a new TreeEntry is created for each node so its properties
          // are always up to date.
          entry: entry,
          // Add a callback to toggle the expansion state of this node.
          onTap: () => treeController.toggleExpansion(entry.node),
        );
      },
    );
  }
}

// Create a widget to display the data held by your tree nodes.
class MyTreeTile extends StatelessWidget {
  const MyTreeTile({
    super.key,
    required this.entry,
    required this.onTap,
  });

  final TreeEntry<MyNode> entry;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      // Wrap your content in a TreeIndentation widget which will properly
      // indent your nodes (and paint guides, if required).
      //
      // If you don't want to display indent guides, you could replace this
      // TreeIndentation with a Padding widget, providing a padding of
      // `EdgeInsetsDirectional.only(start: TreeEntry.level * indentAmount)`
      child: TreeIndentation(
        entry: entry,
        // Provide an indent guide if desired. Indent guides can be used to
        // add decorations to the indentation of tree nodes.
        // This could also be provided through a DefaultTreeIndentGuide
        // inherited widget placed above the tree view.
        guide: const IndentGuide.connectingLines(indent: 48),
        // The widget to render next to the indentation. TreeIndentation
        // respects the text direction of `Directionality.maybeOf(context)`
        // and defaults to left-to-right.
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
          child: Row(
            children: [
              // Add a widget to indicate the expansion state of this node.
              // See also: ExpandIcon.
              FolderButton(
                isOpen: entry.hasChildren ? entry.isExpanded : null,
                onPressed: entry.hasChildren ? onTap : null,
              ),
              Text(entry.node.title),
            ],
          ),
        ),
      ),
    );
  }
}
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   final globalKey = GlobalKey<ScaffoldState>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       key: globalKey,
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: SingleChildScrollView(
//         child: Column(
//           mainAxisSize: MainAxisSize.max,
//           children: [
//             TreeView.simpleTyped<Explorable, TreeNode<Explorable>>(
//               tree: tree,
//               showRootNode: true,
//               expansionBehavior: ExpansionBehavior.scrollToLastChild,
//               expansionIndicatorBuilder: (context, node) {
//                 if (node.isRoot)
//                   return PlusMinusIndicator(
//                     tree: node,
//                     alignment: Alignment.centerLeft,
//                     color: Colors.grey[700],
//                   );
//
//                 return ChevronIndicator.rightDown(
//                   tree: node,
//                   alignment: Alignment.centerRight,
//                   color: Colors.grey[700],
//                 );
//               },
//               indentation: const Indentation(),
//               builder: (context, node) => Padding(
//                 padding: const EdgeInsets.only(left: 16.0),
//                 child: ListTile(
//                   title: Text(node.data?.name ?? "N/A"),
//                   subtitle: Text(node.data?.createdAt.toString() ?? "N/A"),
//                   leading: Padding(
//                     padding: const EdgeInsets.only(top: 8.0),
//                     child: node.icon,
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               height: 40,
//             ),
//             TreeView.simpleTyped<Explorable, TreeNode<Explorable>>(
//               tree: tree,
//               showRootNode: true,
//               expansionBehavior: ExpansionBehavior.scrollToLastChild,
//               expansionIndicatorBuilder: (context, node) {
//                 if (node.isRoot)
//                   return PlusMinusIndicator(
//                     tree: node,
//                     alignment: Alignment.centerLeft,
//                     color: Colors.grey[700],
//                   );
//
//                 return ChevronIndicator.rightDown(
//                   tree: node,
//                   alignment: Alignment.centerLeft,
//                   color: Colors.grey[700],
//                 );
//               },
//               indentation: const Indentation(),
//               builder: (context, node) => Padding(
//                 padding: const EdgeInsets.only(left: 16.0),
//                 child: ListTile(
//                   title: Text(node.data?.name ?? "N/A"),
//                   subtitle: Text(node.data?.createdAt.toString() ?? "N/A"),
//                   leading: Padding(
//                     padding: const EdgeInsets.only(top: 8.0),
//                     child: node.icon,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// extension on ExplorableNode {
//   Icon get icon {
//     if (isRoot) return Icon(Icons.data_object);
//
//     if (this is FolderNode) {
//       if (isExpanded) return Icon(Icons.folder_open);
//       return Icon(Icons.folder);
//     }
//
//     if (this is FileNode) {
//       final file = this.data as File;
//       if (file.mimeType.startsWith("image")) return Icon(Icons.image);
//       if (file.mimeType.startsWith("video")) return Icon(Icons.video_file);
//     }
//
//     return Icon(Icons.insert_drive_file);
//   }
// }
//
// abstract class Explorable {
//   final String name;
//   final DateTime createdAt;
//
//   Explorable(this.name) : this.createdAt = DateTime.now();
//
//   @override
//   String toString() => name;
// }
//
// class File extends Explorable {
//   final String mimeType;
//
//   File(super.name, {required this.mimeType});
// }
//
// class Folder extends Explorable {
//   Folder(super.name);
// }
//
// typedef ExplorableNode = TreeNode<Explorable>;
//
// typedef FileNode = TreeNode<File>;
//
// typedef FolderNode = TreeNode<Folder>;
//
// final tree = TreeNode<Explorable>.root(data: Folder("/root"))
//   ..addAll([
//     FolderNode(
//       data: Folder("Documents"),
//     )..addAll([
//         FileNode(
//           data: File("report.doc", mimeType: "application/msword"),
//         ),
//         FileNode(
//           data: File("budget.xls", mimeType: "application/vnd.ms-excel"),
//         ),
//         FileNode(
//           data: File("training.ppt", mimeType: "application/vnd.ms-powerpoint"),
//         )
//       ]),
//     FolderNode(data: Folder("Media"))
//       ..addAll([
//         FolderNode(data: Folder("Pictures"))
//           ..addAll([
//             FileNode(data: File("birthday_1.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_2.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_3.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_4.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_5.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_6.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_7.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_8.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_9.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("lunch_1.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("lunch_2.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("lunch_3.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("lunch_4.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("lunch_5.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("lunch_6.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("lunch_7.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("banner.png", mimeType: "image/png")),
//           ]),
//         FolderNode(data: Folder("Videos"))
//           ..addAll([
//             FolderNode(data: Folder("Birthday_23"))
//               ..addAll([
//                 FileNode(
//                     data: File("birthday_23_1.mp4", mimeType: "video/mp4")),
//                 FileNode(
//                     data: File("birthday_23_2.mp4", mimeType: "video/mp4")),
//               ]),
//             FolderNode(data: Folder("vacation_ibiza"))
//               ..addAll([
//                 FileNode(data: File("snorkeling.mp4", mimeType: "video/mp4")),
//                 FileNode(data: File("scuba.mp4", mimeType: "video/mp4")),
//               ])
//           ])
//       ]),
//     FolderNode(data: Folder("System"))
//       ..addAll([
//         FolderNode(data: Folder("temp")),
//         FolderNode(data: Folder("apps"))
//           ..addAll([
//             FileNode(
//               data: File("word.exe", mimeType: "application/win32_exe"),
//             ),
//             FileNode(
//               data: File("powerpoint.exe", mimeType: "application/win32_exe"),
//             ),
//             FileNode(
//               data: File("excel.exe", mimeType: "application/win32_exe"),
//             ),
//           ]),
//         FileNode(
//           data: File("sys.exe", mimeType: "application/win32_exe"),
//         ),
//         FileNode(
//           data: File("config.exe", mimeType: "application/win32_exe"),
//         )
//       ]),
//   ]);
//
// final tree2 = TreeNode<Explorable>.root(data: Folder("/root222222222222"))
//   ..addAll([
//     FolderNode(data: Folder("Documents"))
//       ..addAll([
//         FileNode(
//           data: File("report.doc", mimeType: "application/msword"),
//         ),
//         FileNode(
//           data: File("budget.xls", mimeType: "application/vnd.ms-excel"),
//         ),
//         FileNode(
//           data: File("training.ppt", mimeType: "application/vnd.ms-powerpoint"),
//         )
//       ]),
//     FolderNode(data: Folder("Media"))
//       ..addAll([
//         FolderNode(data: Folder("Pictures"))
//           ..addAll([
//             FileNode(data: File("birthday_1.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_2.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_3.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_4.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_5.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_6.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_7.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_8.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("birthday_9.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("lunch_1.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("lunch_2.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("lunch_3.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("lunch_4.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("lunch_5.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("lunch_6.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("lunch_7.jpg", mimeType: "image/jpeg")),
//             FileNode(data: File("banner.png", mimeType: "image/png")),
//           ]),
//         FolderNode(data: Folder("Videos"))
//           ..addAll([
//             FolderNode(data: Folder("Birthday_23"))
//               ..addAll([
//                 FileNode(
//                     data: File("birthday_23_1.mp4", mimeType: "video/mp4")),
//                 FileNode(
//                     data: File("birthday_23_2.mp4", mimeType: "video/mp4")),
//               ]),
//             FolderNode(data: Folder("vacation_ibiza"))
//               ..addAll([
//                 FileNode(data: File("snorkeling.mp4", mimeType: "video/mp4")),
//                 FileNode(data: File("scuba.mp4", mimeType: "video/mp4")),
//               ])
//           ])
//       ]),
//     FolderNode(data: Folder("System"))
//       ..addAll([
//         FolderNode(data: Folder("temp")),
//         FolderNode(data: Folder("apps"))
//           ..addAll([
//             FileNode(
//               data: File("word.exe", mimeType: "application/win32_exe"),
//             ),
//             FileNode(
//               data: File("powerpoint.exe", mimeType: "application/win32_exe"),
//             ),
//             FileNode(
//               data: File("excel.exe", mimeType: "application/win32_exe"),
//             ),
//           ]),
//         FileNode(
//           data: File("sys.exe", mimeType: "application/win32_exe"),
//         ),
//         FileNode(
//           data: File("config.exe", mimeType: "application/win32_exe"),
//         )
//       ]),
//   ]);
//
// final Map<int, Color> colorMapper = {
//   0: Colors.white,
//   1: Colors.blueGrey[50]!,
//   2: Colors.blueGrey[100]!,
//   3: Colors.blueGrey[200]!,
//   4: Colors.blueGrey[300]!,
//   5: Colors.blueGrey[400]!,
//   6: Colors.blueGrey[500]!,
//   7: Colors.blueGrey[600]!,
//   8: Colors.blueGrey[700]!,
//   9: Colors.blueGrey[800]!,
//   10: Colors.blueGrey[900]!,
// };
//
// extension ColorUtil on Color {
//   Color byLuminance() =>
//       this.computeLuminance() > 0.4 ? Colors.black87 : Colors.white;
// }
