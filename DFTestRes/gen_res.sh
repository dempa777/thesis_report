dfsizes=( 32 64 128 256 )
dist_tols=( 0C025 0C05 0C1 0C2 0C4 )
for var in "${dfsizes[@]}"
do
	for var2 in "${dist_tols[@]}"
	do
		composite ${var}_${var2}/a.png 256_0C025/a.png -compose difference res1/${var}_${var2}_a.png
		echo "${var}_${var2}"
	done
done