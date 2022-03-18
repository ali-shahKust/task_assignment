import 'package:get_it/get_it.dart';
import 'package:task_assignment/data/base/base_vm.dart';
import 'package:task_assignment/data/model/items.dart';
import 'package:task_assignment/data/repo/get_items_repo.dart';

class GetItemVm extends BaseVM {

  final repo = GetIt.I.get<GetItemsRep>();
  int _builderIndex = 0;
  List<ItemsModel> _items=[];

  int get builderIndex => _builderIndex;

  set builderIndex(int value) {
    _builderIndex = value;
    notifyListeners();
  }

  List<ItemsModel> get items => _items;

  set items(List<ItemsModel> value) {
    _items = value;
    notifyListeners();
  }

  getItems()async {
    await repo.getItems(builderIndex).then((value) {
      items = value.items;

      print("My Items :${items.length}");
    });

  }
}