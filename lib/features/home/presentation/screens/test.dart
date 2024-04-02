import 'package:flutter/material.dart';

class SizePicker extends StatefulWidget {
  //final List<String> sizes;
  //final String selectedSize;
  //final void Function(String) onSizeSelected;

  const SizePicker({super.key});

  @override
  State<SizePicker> createState() => _SizePickerState();
}

class _SizePickerState extends State<SizePicker> {
  @override
  Widget build(BuildContext context) {
    List<String> sizes = ['S', 'M', 'L'];
    late int selectedSize = -1;
    void onSizeSelected(int index) {
      setState(() {
        selectedSize = index;
      });
    }

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Size'),
            Row(
              children: List.generate(
                  sizes.length,
                  (index) => Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Material(
                          child: InkWell(
                            borderRadius: BorderRadius.circular(3),
                            onTap: () => onSizeSelected(index),
                            child: Ink(
                              height: 50,
                              width: 50,
                              decoration: BoxDecoration(
                                  color: selectedSize == index
                                      ? Color(0xFF667EEA)
                                      : Color(0xFFF3F3F3),
                                  borderRadius: BorderRadius.circular(3)),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  sizes[index],
                                  style: Theme.of(context)
                                      .textTheme
                                      .headline6
                                      ?.copyWith(
                                          color: selectedSize == index
                                              ? Colors.white
                                              : Colors.black87),
                                ),
                              ),
                            ),
                          ),
                        ),
                      )),
            ),
          ],
        ),
      ),
    );
  }
}
