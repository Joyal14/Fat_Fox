import 'package:flutter/material.dart';

class HorizontalChipList extends StatelessWidget {
  final List<String> filters;
  final String? selectedFilter;
  final Function(String) onChipTap;

  const HorizontalChipList({
    Key? key,
    required this.filters,
    required this.selectedFilter,
    required this.onChipTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: filters.length,
        itemBuilder: (context, index) {
          final filter = filters[index];
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4),
            child: GestureDetector(
              onTap: () {
                onChipTap(filter);
              },
              child: Chip(
                backgroundColor: selectedFilter == filter
                    ? Theme.of(context).colorScheme.primary
                    : const Color.fromARGB(255, 12, 12, 12),
                side: BorderSide(
                  color: selectedFilter == filter
                      ? Theme.of(context).colorScheme.primary
                      : Colors.white,
                ),
                label: Text(
                  filter,
                  style: const TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                  ),
                ),
                labelStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 10,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
