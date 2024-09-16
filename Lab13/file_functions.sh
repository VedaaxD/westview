#Function to delete a file
delete_file() {
	echo "Enter a file name to delete:"
	read file
	if [ -f $file ] ; then
		rm $file
		echo "File deleted successfully."
	else 
		echo "File doesn't exists."
	fi

}
#Function to copy a file
copy_file() {
	echo "Enter a file name to be copied:"
	read file 
	if [ -f $file ]; then
		cp $file $file.bak
		echo "File $file is copied to $file.bak"
else
	echo "File doesn't exists."
fi
}
#Function to rename a file
rename_file() {
	echo "Enter the name of the file that has to be renamed:"
	read file
	if [ -f $file ]; then
		echo "Enter the new name of the file:"
		read new_name
		mv $file $new_name
		echo "The file $file has been renamed to $new_name"
	else
		echo "File doesn't exists."
	fi
}
#Function to create a file
create_file(){
	echo "Enter the name of the new file that has to be created:"
	read new_file
	touch $new_file
	echo "The file $new_file has been created"
}
#Function to list the files inside the directory
list_files() {
	echo "Enter the name of the directory:"
	read directory
	if [ -d $directory ]; then
		ls -lh $directory
	else
		echo "Error. Directory doesn't exists. Provide a valid directory name"
	fi
}
#function help to print the above file operations
print_help(){
	echo "File operations are listed below:"
	echo "Delete: Delete a file"
	echo "Copy : Copy a file to filename.bak"
	echo "Rename: Rename a file"
	echo "Create : Create a new file"
	echo "List: List files in a directory"
	echo "Help: Print this help message"
}
file_operation=$1
read -p "file_operation:" file_operation
case $file_operation in 
	Delete)
  	delete_file ;;
  	Copy)
	copy_file ;;
	Rename)
	rename_file ;;
	Create)
	create_file ;;
	List)
	list_files ;;
	Help)
	print_help ;;
	*)
	echo "Invalid operation. Use Help to see available file operations." ;;
esac