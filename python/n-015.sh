tail -n 2 n-015.py > sh_tail.txt
python n-015.py n-015.py 2 > py_tail.txt

diff sh_tail.txt py_tail.txt

rm sh_tail.txt py_tail.txt
