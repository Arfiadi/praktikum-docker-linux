# Menggunakan image dasar Python versi 3.9 yang ramping (slim) berbasis Debian Buster
FROM python:3.9-slim-buster

# Mengatur direktori kerja di dalam container. Semua perintah COPY dan RUN berikutnya akan dijalankan di sini.
WORKDIR /app

# Menyalin file requirements.txt dari host (komputer Anda) ke direktori kerja di dalam container.
COPY requirements.txt .

# Menginstal semua dependensi Python yang tercantum dalam requirements.txt
# --no-cache-dir untuk mengurangi ukuran image akhir dengan tidak menyimpan cache instalasi pip.
RUN pip install --no-cache-dir -r requirements.txt

# Menyalin file aplikasi Python Anda (diagnosis_gastrousus.py) dari host ke direktori kerja di dalam container.
COPY diagnosis_gastrousus.py .

# Mendeklarasikan port 8501 akan diekspos (port default Streamlit)
EXPOSE 8501

# Menentukan perintah yang akan dijalankan saat container diluncurkan.
# "streamlit run diagnosis_gastrousus.py" akan menjalankan aplikasi Streamlit.
# "--server.port 8501" memastikan Streamlit berjalan di port tersebut di dalam container.
# "--server.address 0.0.0.0" memastikan aplikasi dapat diakses dari semua interface jaringan di dalam container,
#  yang penting agar bisa diakses dari host.
CMD ["streamlit", "run", "diagnosis_gastrousus.py", "--server.port", "8501", "--server.address", "0.0.0.0"]
