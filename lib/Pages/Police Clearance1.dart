import 'package:flutter/material.dart';
import 'package:police_app/Pages/Home%20Page.dart';

class Police_Clearance1 extends StatefulWidget {
  const Police_Clearance1({Key? key}) : super(key: key);

  @override
  State<Police_Clearance1> createState() => _Police_Clearance1State();
}

class _Police_Clearance1State extends State<Police_Clearance1> {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _nameController = TextEditingController();
    final _FnameController = TextEditingController();
    final _cnicController = TextEditingController();
    final _C_addressController = TextEditingController();
    final _P_addressController = TextEditingController();
    final _pasportController = TextEditingController();
    final _dobController = TextEditingController();
    final _contactController = TextEditingController();

    @override
    void dispose() {
      _nameController.dispose();
      _FnameController.dispose();
      _cnicController.dispose();
      _C_addressController.dispose();
      _P_addressController.dispose();
      _pasportController.dispose();
      _dobController.dispose();
      _contactController.dispose();
      super.dispose();
    }

    void _submitForm() {
      if (_formKey.currentState!.validate()) {
        // Process the form data
        String name = _nameController.text;
        String Fname = _FnameController.text;
        String cnic = _cnicController.text;
        String Caddress = _C_addressController.text;
        String Paddress = _P_addressController.text;
        String dob = _dobController.text;
        String address = _P_addressController.text;
        String contact = _contactController.text;

        // You can now use the collected data as needed
        print('Name: $name');
        print('Date of Birth: $dob');
        print('Address: $address');
        print('Contact: $contact');

        // Show a success message or navigate to another page
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Form submitted successfully!')),
        );
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Police Assistance Lines'),
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.purple], // Define your gradient colors here
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(14),
          child: Column(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'images/Swat-Police-Logo.png',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              SizedBox(height: 14),
              Text(
                'Distric Police Swat',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(height: 8),
              Text(
                'Application of Police Clearance Certificate',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
              SizedBox(height: 12),
              TextFormField(
                controller: _nameController,
                decoration: InputDecoration(labelText: '1. Applicant Name:'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _FnameController,
                decoration:
                    InputDecoration(labelText: '2. Father/Husband Name:'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _cnicController,
                decoration: InputDecoration(labelText: '3. CNIC No:'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _dobController,
                decoration: InputDecoration(labelText: '4. Date of Birth:'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _C_addressController,
                decoration: InputDecoration(labelText: '5. Current Address:'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your name';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _P_addressController,
                decoration: InputDecoration(labelText: '6. Permanent Address:'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your date of birth';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _pasportController,
                decoration: InputDecoration(labelText: ' 7. Passport No:'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller: _contactController,
                decoration: InputDecoration(labelText: '8. Mobile No:'),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your contact number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 18),
              Text(
                'I, solemnly declare that all the information given in this form, according to the best of my knowledge are correct.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 22),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        'Date:',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      Divider(
                        color: Colors.black,
                        // Color of the line
                        thickness: 2,
                        // Thickness of the line
                        indent: 100,
                        // Empty space to the leading edge of the divider.
                        endIndent:
                            0, // Empty space to the trailing edge of the divider.
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        'Signature of Applicant:',
                        style: TextStyle(
                            fontWeight: FontWeight.w400, fontSize: 14),
                      ),
                      Divider(
                        color: Colors.black,
                        // Color of the line
                        thickness: 2,
                        // Thickness of the line
                        indent: 100,
                        // Empty space to the leading edge of the divider.
                        endIndent:
                            0, // Empty space to the trailing edge of the divider.
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(height: 22),
              Text(
                'Clearance certificate will be issued after one week form the date of submissionapplication form.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(height: 18),
              Row(
                children: [
                  Text(
                    'SHO',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    'Police Station:',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
                  ),
                  Divider(
                    color: Colors.black,
                    // Color of the line
                    thickness: 2,
                    // Thickness of the line
                    indent: 100,
                    // Empty space to the leading edge of the divider.
                    endIndent:
                        0, // Empty space to the trailing edge of the divider.
                  ),
                ],
              ),
              SizedBox(height: 22),
              Text(
                'Note :',
                style: TextStyle(
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                    fontSize: 16),
              ),
              SizedBox(height: 8),
              Text(
                'Please return this form to PAL center within 24 hours after verification, as per local police station record, duty singed and attested by the SHO concerned.',
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 14),
              ),
              SizedBox(height: 24),
              Row(
                children: [
                  Text(
                    'Verification Incharge\n   PAL Center Swat',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                ],
              ),
              SizedBox(height: 16),
              ElevatedButton(
                onPressed: (){
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (BuildContext context) =>
                          Home_Page()));
                },
                child: Text('Done'),
              ),
              SizedBox(height: 32),
            ],
          ),
        ),
      ),
    );
  }
}
