if [ ! -e hightemp.txt ]; then
    wget -Nq http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
fi

cut -f 1 hightemp.txt | sort | uniq -c | sort -r > sh_019.txt
python n-019.py > py_019.txt

diff sh_019.txt py_019.txt

rm sh_019.txt py_019.txt
