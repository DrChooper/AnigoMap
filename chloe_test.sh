#!/bin/bash

# Set the GitHub repository URL
repository_url="https://github.com/ian-small/chloe"

# Prompt user to choose the installation directory
read -p "Enter the installation directory (default is './annotator'): " user_install_directory

# Set the desired installation directory based on user input
install_directory=${user_install_directory:-"./annotator"}

# Clone the repository
git clone $repository_url $install_directory

# Navigate to the installation directory
cd $install_directory

# Activate the Julia environment and install the package
julia -e 'import Pkg; Pkg.activate("."); Pkg.instantiate();'

# Run any additional setup or commands if needed
# For example, if there are additional build steps
# julia -e 'import Pkg; Pkg.build("Chloe");'

echo "Chloe package has been downloaded and activated in $install_directory."
