# allows you to execute ./build.sh without the bash keyword
chmod +x ./build.sh
# copy across files to distribution directory
mkdir dist
cp ./new-terminal-app.rb ./dist
cp ./product.rb ./dist
cp ./README.md ./dist
cp ./methods.rb ./dist
cp ./Help_file.md ./dist

# install all gems
gem install colorize 
gem install terminal-table



