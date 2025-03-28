import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snap_pay/src/config/router/app_router_cubit.dart';

class NotImplementedDialog extends StatelessWidget {
  const NotImplementedDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: SizedBox(
        height: 120,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Icon(Icons.warning_rounded, color: Colors.amberAccent),
                  SizedBox(width: 12),
                  AutoSizeText(
                    "Warnig",
                    style: TextStyle(fontSize: 20),
                    maxLines: 1,
                  ),
                ],
              ),
              AutoSizeText(
                "Not implemented yet",
                style: TextStyle(fontSize: 16),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  onPressed: () {
                    context.read<AppRouterCubit>().state.pop();
                  },
                  style: ButtonStyle(
                    shape: WidgetStatePropertyAll(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                  ),
                  child: Text("OK"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
