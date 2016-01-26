head -n 3 n-014.py > sh_head.txt
python n-014.py n-014.py 3 > py_head.txt

diff sh_head.txt py_head.txt

rm sh_head.txt py_head.txt
