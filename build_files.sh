echo " BUILD START..."
pip install -r requirements.txt

echo " MAKE Migration..."
python3.9 manage.py makemigrations --noinput 
python3.9 manage.py migrate --noinput

echo " Collect static..."
python3.9 manage.py collectstatic --noinput --clear 
echo " BUILD END..."