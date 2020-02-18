#/!/bin/bash
set -e;
read -p "Please enter project name: " project_name

#update project name in project.yml
mv project.yml project.in.yml
sed -e "s/Some/${project_name}/g" project.in.yml > project.yml
rm project.in.yml 
echo "Project.yml updated"

#update project name in podfile
mv Podfile Podfile.in
sed -e "s/Some/${project_name}/g" Podfile.in > Podfile
rm Podfile.in
echo "Podfile updated"

#Update rambafile
mv Rambafile Rambafile.in
sed -e "s/Some/${project_name}/g" Rambafile.in > Rambafile
rm Rambafile.in

xcodegen
pod install
