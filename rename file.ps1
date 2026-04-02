# Tentukan folder tempat video berada
$path = "D:\Dokumen\Projek Laravel\simtera-assets\SIM-A\MODUL-4\WAWASAN"

# Berpindah ke direktori tersebut
cd $path

# Melakukan perulangan dari 1 sampai 20
for ($i = 1; $i -le 20; $i++) {
    $namaLama = "TES SIM A MODUL 4 WAWASAN $i.mp4"
    $namaBaru = "$i.mp4"

    # Cek apakah file lama ada sebelum mengganti nama
    if (Test-Path $namaLama) {
        Rename-Item -Path $namaLama -NewName $namaBaru
        Write-Host "Berhasil: $namaLama -> $namaBaru" -ForegroundColor Green
    } else {
        Write-Host "Peringatan: $namaLama tidak ditemukan." -ForegroundColor Yellow
    }
}