# Set the path to the folder containing the files
$folderPath = "C:\Users\peter\AppData\Roaming\mRemoteNG"

# Set the path to the output text file
$outputFile = "C:\Users\peter\results1.txt"

# Get all files in the folder and loop through them
Get-ChildItem -Path $folderPath | ForEach-Object {
    # Get the contents of the current file
    $fileContent = Get-Content $_.FullName

    # Create a string that includes the file name and its contents
    $outputString = "`n$($_.Name)`n$fileContent`n"

    # Append the output string to the output text file
    Out-File -FilePath $outputFile -InputObject $outputString -Append
}
