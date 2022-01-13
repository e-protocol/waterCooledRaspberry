#! /bin/bash
clear
if ! [ -x "$(command -v sysbench)" ]; then
  echo 'Error: sysbench is not installed. To use this script first install sysbench' >&2
  exit 1
fi
echo "test cpu overload 8 threads for 5 minutes"
echo "test started..."
vcgencmd measure_temp
for i in {1..30}
do
	sysbench --threads=8 --cpu-max-prime=20000 --test=cpu run >/dev/null 2>&1
	num=$((i * 10))
	if ((num < 60)); then
		echo "test time: $num sec"
	elif ((num % 60 == 0)); then
		echo "test time: $((num / 60)) min"
	else
		min_float=$((num / 60))
		min=${min_float/.*}
		echo "test time: $min min $((num % 60)) sec"
	fi
	vcgencmd measure_temp
done
echo "test completed!"
