if [ ! -e hightemp.txt ]; then
    wget -Nq http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
fi

tail -n 2 hightemp.txt > sh_tail.txt
python n-015.py hightemp.txt 2 > py_tail.txt

diff sh_tail.txt py_tail.txt

rm sh_tail.txt py_tail.txt
