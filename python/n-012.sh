if [ ! -e hightemp.txt ]; then
    wget -Nq http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
fi

cut -f 1 hightemp.txt > sh_col1.txt
cut -f 2 hightemp.txt > sh_col2.txt
python n-012.py

diff sh_col1.txt col1.txt
diff sh_col2.txt col2.txt

rm sh_col1.txt sh_col2.txt
