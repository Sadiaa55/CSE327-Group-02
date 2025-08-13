import 'package:flutter/material.dart';

class CategorySelection{}

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  bool is_Comedy_Selected = false;
  bool is_Action_Selected = false;
  bool is_Drama_Selected = false;
  bool is_Horror_Selected = false;
  bool is_Scifi_Selected = false;
           
  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      children: [
      ChoiceChip(
        label: const Text('Comedy'),
        selected: is_Comedy_Selected,
        onSelected: (val) {
          setState(() {
            is_Comedy_Selected = val;
          });
        },
      ),
      ChoiceChip(
        label: const Text('Action'),
        selected: is_Action_Selected,
        onSelected: (val) {
          setState(() {
            is_Action_Selected = val;
          });
        }
      ),
      ChoiceChip(
        label: const Text('Drama'),
        selected: is_Drama_Selected,
        onSelected: (val) {
          setState(() {
            is_Drama_Selected = val;
          });
        }
      ),
       ChoiceChip(
        label: const Text('Horror'),
        selected: is_Horror_Selected,
        onSelected: (val) {
          setState(() {
            is_Horror_Selected = val;
          });
        }
      ),
       ChoiceChip(
        label: const Text('Sci-fi'),
        selected: is_Scifi_Selected,
        onSelected: (val) {
          setState(() {
            is_Scifi_Selected = val;
          });
        }
      ),
    ],
  );
}
}