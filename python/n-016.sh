if [ ! -e hightemp.txt ]; then
    wget -Nq http://www.cl.ecei.tohoku.ac.jp/nlp100/data/hightemp.txt
fi

split -l 24 hightemp.txt
python n-016.py hightemp.txt 1

diff xaa py_xaa

split -l 12 hightemp.txt
python n-016.py hightemp.txt 2

diff xaa py_xaa
diff xab py_xab

split -l 8 hightemp.txt
python n-016.py hightemp.txt 3

diff xaa py_xaa
diff xab py_xab
diff xac py_xac

split -l 6 hightemp.txt
python n-016.py hightemp.txt 4

diff xaa py_xaa
diff xab py_xab
diff xac py_xac
diff xad py_xad

rm xa* py_xa*
