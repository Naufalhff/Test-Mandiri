import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Masukkan jumlah jam kerja: ");
        double jamKerja = scanner.nextDouble();

        System.out.print("Masukkan tarif per jam: ");
        double tarifPerJam = scanner.nextDouble();

        if (jamKerja < 0 || tarifPerJam < 0) {
            System.out.println("Input tidak valid. Harap masukkan angka positif.");
        } else {
            double gaji = hitungGaji(jamKerja, tarifPerJam);
            System.out.printf("Gaji total karyawan: Rp%.2f%n", gaji);
        }

        scanner.close();
    }

    public static double hitungGaji(double jamKerja, double tarifPerJam) {
        final int jamNormal = 40;
        final double tarifLembur = 1.5;
        double gaji;

        if (jamKerja <= jamNormal) {
            gaji = jamKerja * tarifPerJam;
        } else {
            double jamLembur = jamKerja - jamNormal;
            gaji = (jamNormal * tarifPerJam) + (jamLembur * tarifPerJam * tarifLembur);
        }

        return gaji;
    }

}