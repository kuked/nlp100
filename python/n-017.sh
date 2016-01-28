if [ ! -e hightemp.txt ]; then
    wget -Nq http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
fi

cut -f 1 hightemp.txt | sort | uniq > sh_017.txt
python n-017.py > py_017.txt

diff sh_017.txt py_017.txt

rm sh_017.txt py_017.txt
