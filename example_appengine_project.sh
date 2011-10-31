#The script to set up an example django appengine project
mkdir new-app
cd new-app

#Clone basic example first
hg clone https://bitbucket.org/wkornewald/django-testapp

cd django-testapp

#Now clone various other apps for making the django-testapp work
hg clone https://bitbucket.org/wkornewald/django-nonrel
hg clone https://bitbucket.org/wkornewald/djangoappengine
hg clone https://bitbucket.org/wkornewald/djangotoolbox
hg clone https://bitbucket.org/twanschik/django-autoload
hg clone https://bitbucket.org/wkornewald/django-dbindexer

#Now organising the various app according to folder hierarchy
mv django-nonrel/django tempdjango
mv djangotoolbox/djangotoolbox tempdjangotoolbox
mv django-autoload/autoload tempautoload
mv django-dbindexer/dbindexer tempdbindexer

#Cleaning directory
rm -R django-nonrel
rm -R djangotoolbox
rm -R django-autoload
rm -R django-dbindexer

#Finalising
mv tempdjango django
mv tempdjangotoolbox djangotoolbox
mv tempautoload autoload
mv tempdbindexer dbindexer
