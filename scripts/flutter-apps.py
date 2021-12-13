
import os
import subprocess


destination = '/home/buran/flutter_dart_apps'

template = """ 
______________ Dart stealer ____________

 - copies files from destination to  flutter git folder
 - it has an option to push the changes to git too.
 - overwriting existing folder functionality to be checked - if there is a folder named {name} exists in flutter_dart_apps

"""

print(template,f"destination folder is set to   {destination} \n")

islib = os.getcwd().__contains__('lib')


if islib == False :
    print('\n You are not in the lib directory , please move to lib directory and try again')
    quit()


# permission = input(f'Do you want to copy files from here  ? Y/yes/1/true n/no :')
# permission_valid=['Y','YES','1','TRUE'];

# if(not permission_valid.__contains__(permission.upper())):
#     print('call me when you need me')
#     quit()


while True:
    foldername = input('What is the folder name you want to set for this app :')
    if(os.path.isdir(f'{destination}/{foldername}')):
        print('Folder already exists , rename it')
        continue
    break   


foldereply = subprocess.getoutput(f'mkdir -p {destination}/{foldername}/lib')


copyfiles = subprocess.getoutput(f'cp -r * {destination}/{foldername}/lib/')




print('done')




