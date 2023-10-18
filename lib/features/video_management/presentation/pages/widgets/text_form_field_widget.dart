

import 'video_widgets.dart';

class TextFormFieldVideoWidget extends StatelessWidget {
  final TextEditingController controller;
  final String title;
  final String hintText;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final Function()? onTap;
  final TextInputType? keyboardType;
  const TextFormFieldVideoWidget({
    required this.hintText,
    required this.title,
    this.keyboardType,
    required this.controller,
    this.onChanged,
    this.validator,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TextFormField(
        onChanged: onChanged,
        onTap: onTap,
        validator: validator,
        keyboardType: keyboardType,
        controller: controller,
        decoration: InputDecoration(
            border: const OutlineInputBorder(),
            hintText: hintText,
            label: Text(title)),
      ),
    );
  }
}
