import 'package:app_analytics/components/base_screen.dart';
import 'package:app_analytics/components/category_card.dart';
import 'package:app_analytics/controllers/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ChoicePage extends StatelessWidget {
  final _controller = DataController();
  ChoicePage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return BaseScreen(
      titlePage: 'Escolha',
      child: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 1,
            ),
            SizedBox(
              width: size.width * 0.8,
              height: size.height * 0.5,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  crossAxisCount: 2,
                ),
                children: List.generate(
                  _controller.listCategory.length,
                  (index) => CategoryCard(
                    category: _controller.listCategory[index].category!,
                    icon: _controller.listCategory[index].icon!,
                    onTap: () async {
                      await _controller
                          .logChoice(_controller.listCategory[index]);
                    },
                  ),
                ),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
          ],
        ),
      ),
    );
  }
}
