import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:studify/desktop/components/admin/utils/app_view_model.dart';
import 'package:studify/mobile/widgets/custom_text.dart';

class SingleUpdateAdminDesktopScreen extends StatelessWidget {
  const SingleUpdateAdminDesktopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var updateViewModel = Provider.of<AppViewModel>(context, listen: false);

    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            width: double.infinity,
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.arrow_back_ios,
                    size: 10,
                  ),
                  onPressed: updateViewModel.viewDefaultUpdate,
                ),
                const SizedBox(
                  width: 20,
                ),
                const CustomText(
                  'New Update',
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                'assets/images/signin.png',
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: [
                const CustomText(
                  'Admin',
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
                const CustomText(
                  'Ada George Branch',
                  fontSize: 11,
                  fontWeight: FontWeight.w300,
                  fontStyle: FontStyle.italic,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 30,
                    vertical: 10,
                  ),
                  child: Divider(
                    color: Colors.grey.shade300,
                  ),
                ),
                const CustomText(
                  'Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit? Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?Lorem ipsum dolor sit amet consectetur adipisicing elit. Natus labore enim, soluta hic quod fugiat dolores odit nam eligendi magnam. At ipsum esse repellat illo exercitationem, quisquam ea ratione minima optio, libero voluptate neque, amet officia expedita. Suscipit, repudiandae reprehenderit?',
                  fontSize: 12,
                  fontWeight: FontWeight.normal,
                  textAlign: TextAlign.center,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
