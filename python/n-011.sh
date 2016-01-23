if [ ! -e hightemp.txt ]; then
    wget -Nq http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
fi

cat hightemp.txt | tr '\t' ' ' > sh.txt
python n-011.py > py.txt

diff sh.txt py.txt

rm sh.txt py.txt
