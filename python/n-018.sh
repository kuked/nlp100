if [ ! -e hightemp.txt ]; then
    wget -Nq http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
fi

sort -k 3,3 hightemp.txt > sh_018.txt
python n-018.py > py_018.txt

diff sh_018.txt py_018.txt

rm sh_018.txt py_018.txt
