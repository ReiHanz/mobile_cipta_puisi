part of "../../authentication.dart";

class DialogPetunjukPenggunaan extends StatelessWidget {
  const DialogPetunjukPenggunaan({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final dataPetunjukPengunaan = DataPetunjukPenggunaan.data;
    final title = dataPetunjukPengunaan.title;
    final description = dataPetunjukPengunaan.description;
    final penggunaUmum = dataPetunjukPengunaan.penggunaUmum;
    final penggunaPenilai = dataPetunjukPengunaan.penggunaGuruPenilaiKurator;
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          width: size.width * 0.95,
          height: size.height * 0.9,
          padding: const EdgeInsets.all(15.0),
          decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.background,
            borderRadius: BorderRadius.circular(10.0),
            border: Border.all(width: 3),
          ),
          child: Column(
            children: [
              ListTile(
                contentPadding: EdgeInsets.zero,
                title:
                    Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                trailing: IconButton(
                  onPressed: Navigator.of(context).pop,
                  icon: const Icon(Icons.close),
                ),
              ),
              const Divider(),
              Expanded(
                child: ListView(
                  padding: const EdgeInsets.all(5.0),
                  children: [
                    Text(description, textAlign: TextAlign.justify),

                    /// PENGGUNA UMUM
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.person),
                      title: Text(
                        penggunaUmum.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        for (String content in penggunaUmum.content)
                          Text("- $content", textAlign: TextAlign.justify)
                      ],
                    ),

                    /// PENGGUNA GURU/PENILAI/KURATOR
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: const Icon(Icons.people_outline),
                      title: Text(
                        penggunaPenilai.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        for (String content in penggunaPenilai.content)
                          Text("- $content", textAlign: TextAlign.justify)
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
