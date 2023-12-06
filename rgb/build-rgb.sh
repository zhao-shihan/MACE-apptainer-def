# simd_list=(sse4.2 avx avx2 fma avx512f avx512vl)
simd_list=(sse4.2 avx avx2 fma)

for simd in simd_list; do
    apptainer build --build-arg SIMD=${simd} rgb-${simd}.sif rgb.def
done
