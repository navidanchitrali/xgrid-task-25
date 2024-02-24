import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:xgrid_task25/ui/screens/product%20screen/product_viewModel.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ChangeNotifierProvider<ProductViewModel>(
      create: (_) => ProductViewModel(),
      child: Consumer<ProductViewModel>(builder: ((context, model, child) {
        return Column(
          children: [
            Text('Products'),
            Container(
              height: 300,
              color: Colors.green,
              child: ListView.builder(
                  itemCount: model.products!.length,
                  itemBuilder: (context, index) {
                    return Container(
                      color: Colors.red,
                      height: 100,
                      child: (Text(model.products![i!].name!)),
                    );
                  }),
            )
          ],
        );
      })),
    ));
  }
}
