import 'package:flutter/material.dart';

class ProductItem {
  ProductItem({this.name});
  final String name;
}

typedef void CartModifiedEvent({ProductItem item, bool inCard});

class ShoppingListItem extends StatelessWidget{

  ShoppingListItem({ ProductItem item, this.inCart, this.onCartChanged}) :
        item = item, super(key: ObjectKey(item));

  final ProductItem item;
  final bool inCart;
  final CartModifiedEvent onCartChanged;


}