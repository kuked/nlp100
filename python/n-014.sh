if [ ! -e hightemp.txt ]; then
    wget -Nq http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
fi

head -n 3 hightemp.txt > sh_head.txt
python n-014.py hightemp.txt 3 > py_head.txt

diff sh_head.txt py_head.txt

rm sh_head.txt py_head.txt
