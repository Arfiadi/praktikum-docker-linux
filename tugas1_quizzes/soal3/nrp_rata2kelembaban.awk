#!/usr/bin/awk -f

NR > 1 {
    total += $3
    count++
}

END {
    avg = total / count
    printf "Rata-rata kelembaban: %.1f\n", avg
}

