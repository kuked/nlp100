if [ ! -e hightemp.txt ]; then
    wget -Nq http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
fi

paste col1.txt col2.txt > sh_merged.txt
python n-013.py

diff sh_merged.txt merged.txt
