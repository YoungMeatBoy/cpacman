echo 'Commiting...'
git commit -a -m "prepush commit"
echo 'Pushing to master...'
git push origin master
echo 'Building wheel'
python setup.py sdist bdist_wheel
echo 'Checing dist...'
twine check dist/*
echo 'Uploading to PyPi'
twine upload dist/*