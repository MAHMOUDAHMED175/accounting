import 'package:accounting/core/utils/color_manager.dart';
import 'package:accounting/features/accounting/data/accounts_model/values.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fancy_tree_view/flutter_fancy_tree_view.dart';

import '../../../view_model/managers/cubit/accounts_cubit.dart';

class MyNode {
  const MyNode({
    required this.title,
    required this.children,
  });

  final String title;
  final List<MyNode> children;
}

class MyTreeViewDataConverter {
  static List<MyNode> convertListToMyNodes(List<AccountModelValuesTrees> list) {
    return list.map((item) => convertAccountsToMyNode(item, list)).toList();
  }

  static MyNode convertAccountsToMyNode(
      AccountModelValuesTrees accountValueModel,
      List<AccountModelValuesTrees> allAccounts) {
    final children = allAccounts
        .where(
          (item) =>
              accountValueModel.idInteger == item.parentId
              // &&  accountValueModel.accountlevel == 1
              &&
              accountValueModel.haveSub == true,
        )
        .map((child) => convertAccountsToMyNode(child, allAccounts))
        .toList();
    return MyNode(
      title: accountValueModel.arabicName,
      children: children,
    );
  }
}

class MyTreeView extends StatefulWidget {
  final List<MyNode> roots;

  MyTreeView({Key? key, required List<AccountModelValuesTrees> listOfAccounts})
      : roots = MyTreeViewDataConverter.convertListToMyNodes(listOfAccounts),
        super(key: key);

  @override
  State<MyTreeView> createState() => _MyTreeViewState();
}

class _MyTreeViewState extends State<MyTreeView> {
  late final TreeController<MyNode> treeController;

  @override
  void initState() {
    super.initState();
    treeController = TreeController<MyNode>(
      roots: widget.roots,
      childrenProvider: (MyNode node) => node.children,
    );
  }

  @override
  void dispose() {
    treeController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TreeView<MyNode>(
      treeController: treeController,
      nodeBuilder: (BuildContext context, TreeEntry<MyNode> entry) {
        return MyTreeTile(
          key: ValueKey(entry.node),
          entry: entry,
          onTap: () => treeController.toggleExpansion(entry.node),
        );
      },
    );
  }
}

class MyTreeTile extends StatelessWidget {
  const MyTreeTile({
    Key? key,
    required this.entry,
    required this.onTap,
  }) : super(key: key);

  final TreeEntry<MyNode> entry;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      hoverColor: Colors.grey[200],
      highlightColor: Colors.blue[200],
      splashColor: Colors.blue[200],
      child: TreeIndentation(
        entry: entry,
        guide: const IndentGuide.connectingLines(indent: 48),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(4, 8, 8, 8),
          child: Row(
            children: [
              FolderButton(
                isOpen: entry.hasChildren ? entry.isExpanded : null,
                color:
                    entry.hasChildren ? ColorManager.orange : ColorManager.grey,
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

// Replace 'AccountValueModel' with the actual type used in your application.
class AccountModelValuesTrees {
  final String arabicName;
  final int idInteger;
  final int parentId;
  final int accountlevel;
  final bool haveSub;
  final List<AccountModelValuesTrees> children;

  AccountModelValuesTrees({
    required this.idInteger,
    required this.parentId,
    required this.accountlevel,
    required this.arabicName,
    required this.children,
    required this.haveSub,
  });
}

class MyAppss extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<AccountModelValues> listOfAccounts =
        AccountsCubit.get(context).accountModel == null
            ? []
            : AccountsCubit.get(context)
                .accountModel!
                .values!
                // .where((item) => item.accountLevel == 2)
                .toList();

    List<AccountModelValuesTrees> listOfTrees = listOfAccounts.map((account) {
      return AccountModelValuesTrees(
        arabicName: account.arabicName!,
        children: [],
        idInteger: account.idInteger!,
        parentId: account.parentId!,
        haveSub: account.haveSub!,
        accountlevel: account.accountLevel!,
      );
    }).toList();

    return MyTreeView(listOfAccounts: listOfTrees);
  }
}
