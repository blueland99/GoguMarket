import 'package:flutter/material.dart';

class BoxButtonWidget extends StatelessWidget {
  late String text;
  late void Function()? callback;
  late bool enabled;

  BoxButtonWidget({super.key, required this.text, required this.callback, this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: TextButton(
              onPressed: enabled ? callback : null,
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.disabled)) {
                      return Colors.grey.shade200;
                    } else {
                      return Theme.of(context).colorScheme.secondary;
                    }
                  },
                ),
              ),
              child: Text(
                text,
                style: Theme.of(context).textTheme.titleMedium!.copyWith(
                      color: enabled ? Colors.white : Colors.grey.shade400,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  late String text;
  late void Function()? callback;
  late bool enabled;

  TextButtonWidget({super.key, required this.text, required this.callback, this.enabled = true});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: enabled ? callback : null,
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: enabled ? Theme.of(context).colorScheme.secondary : Colors.grey.shade200,
        ),
      ),
    );
  }
}
