if [ ! -e hightemp.txt ]; then
    wget -Nq http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
fi

wc -l hightemp.txt
python n-010.py hightemp.txt
