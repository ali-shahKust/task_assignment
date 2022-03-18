import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:task_assignment/ui/get_item/get_item_vm.dart';

class GetItemScreen extends StatefulWidget {
  static const  routName = '/';

  @override
  State<GetItemScreen> createState() => _GetItemScreenState();
}

class _GetItemScreenState extends State<GetItemScreen> {
  @override
  void initState() {
    getItems();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<GetItemVm>(builder:(context, vm , _){
      return Scaffold();
    });
  }

  void getItems() async {
    await Future.delayed(Duration(seconds: 2));
    Provider.of<GetItemVm>(context, listen: false).getItems();
  }
}
