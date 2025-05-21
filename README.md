# Greg Portofolio
Hi, I’m Greg , a junior data analyst eager to turn numbers into clear, useful stories.
My current toolkit:

- SQL – writing queries for data extraction, cleaning, and summarization
- Microsoft Excel – intermediate formulas, pivot tables, basic VBA macros
- Power BI – building interactive dashboards to visualize insights

# [📊 Customer Segmentation with RFM (PostgreSQL + Excel)](https://www.example.com)

Proyek ini bertujuan untuk mengelompokkan pelanggan berdasarkan perilaku belanja mereka menggunakan metode **RFM (Recency, Frequency, Monetary)**. Pendekatan ini membantu tim marketing untuk memahami karakteristik pelanggan dan menyusun strategi promosi yang lebih tepat sasaran.

---

## 🧰 Tools yang Digunakan

- **PostgreSQL** – Membersihkan data dan menghitung skor RFM langsung dari SQL
- **Excel** – Membuat dashboard visualisasi menggunakan Pivot Table dan grafik

---

## 🔄 Alur Proyek

1. **Import dan Pembersihan Data**
   - File mentah dimuat dari [`raw_data.csv`](https://www.example.com)
   - Pembersihan dan perhitungan RFM dilakukan melalui SQL script: [`cleaned_data.sql`](https://www.example.com)
2. **Perhitungan RFM**
   - **Recency**: Terakhir kali pelanggan melakukan pembelian  
   - **Frequency**: Seberapa sering mereka bertransaksi  
   - **Monetary**: Total nilai transaksi
3. **Segmentasi Pelanggan**
   - Pelanggan dikelompokkan menjadi:
     - **Loyal**
     - **Regular**
     - **New**
     - **Lost**
4. **Visualisasi Dashboard**
   - Hasil ekspor dibuka di Excel dan divisualisasikan:
     [`rfm_dashboard.xlsx`](https://www.example.com)

---

## 📁 Struktur File

```bash
.
├── raw_data.csv             # Data transaksi mentah
├── cleaned_data.sql         # SQL script untuk cleaning dan RFM scoring
├── rfm_dashboard.xlsx       # File Excel dashboard
├── rfm_dashboard.png        # Gambar hasil visualisasi
└── README.md                # Deskripsi proyek

