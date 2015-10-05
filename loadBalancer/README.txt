The purpose of this repo is to house the code necessary to build and deploy instances when prompting the user for input.

The enviroSetup folder houses a shell script to install Apache2 webservers and Git for code pulling. It includes a confirmation text file.

The launch folder is the moneymaker - it houses a shell script to launch an instance through AWS. It prompts the user for all 6 variables of the AWS process. The potential failure is requiring user input without checking the format/ correct position of the entries. A user could enter nonsense into the prompts and the shell script would fail without producing adequate error codes. A future project woul be to create some way to error-check user input.

The application folder houses scripts and images to launch 2 websites, based on the webservers installed from the enviroSetup folder.
