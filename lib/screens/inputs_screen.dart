import 'package:flutter/material.dart';
import 'package:fl_components/widgets/widgets.dart';

class InputsScreen extends StatelessWidget {
  const InputsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();

    final Map<String, String> formValues = {
      'first_name': '',
      'last_name': '',
      'emal': '',
      'password': '',
      'role': '',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs y Forms'),
      ),
      body: SingleChildScrollView(
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Form(
              key: myFormKey,
              child: Column(
                children: [
                  CustomInputField(
                    hintText: 'Nombre del usuario',
                    labelText: 'Nombre',
                    keyBoardType: TextInputType.name,
                    formProperty: 'first_name',
                    formValues: formValues,
                    // icon: Icons.assignment_ind_outlined,
                    // suffixIcon: Icons.group_outlined,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    hintText: 'Apellido del usuario',
                    labelText: 'Apellido',
                    keyBoardType: TextInputType.name,
                    formProperty: 'last_name',
                    formValues: formValues,
                    // icon: Icons.assignment_ind_outlined,
                    // suffixIcon: Icons.group_outlined,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    hintText: 'Correo del usuario',
                    labelText: 'Correo',
                    keyBoardType: TextInputType.emailAddress,
                    formProperty: 'email',
                    formValues: formValues,
                    // icon: Icons.assignment_ind_outlined,
                    // suffixIcon: Icons.group_outlined,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  CustomInputField(
                    hintText: 'Contraseña del usuario',
                    labelText: 'Contraseña',
                    obscureText: true,
                    formProperty: 'password',
                    formValues: formValues,
                    // icon: Icons.assignment_ind_outlined,
                    // suffixIcon: Icons.group_outlined,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  DropdownButtonFormField<String>(
                      items: const [
                        DropdownMenuItem(
                          child: Text('Admin'),
                          value: 'Admin',
                        ),
                        DropdownMenuItem(
                          child: Text('Superuser'),
                          value: 'Superuser',
                        ),
                        DropdownMenuItem(
                          child: Text('Developer'),
                          value: 'Developer',
                        ),
                        DropdownMenuItem(
                          child: Text('Jr. Developer'),
                          value: 'Jr. Developer',
                        ),
                      ],
                      onChanged: (value) {
                        print(value);
                        formValues['role'] = value ?? 'Admin';
                      }),
                  ElevatedButton(
                      onPressed: () {
                        FocusScope.of(context).requestFocus(FocusNode());

                        if (!myFormKey.currentState!.validate()) {
                          print('Formulario no valido');
                          return;
                        }

                        print(formValues);
                      },
                      child: const SizedBox(
                          height: 35,
                          width: double.infinity,
                          child: Center(child: Text('Guardar'))))
                ],
              ),
            )),
      ),
    );
  }
}
