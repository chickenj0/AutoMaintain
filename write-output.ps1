# <!-- This will write the text "hello world" to the file "output.txt." -->
write-output 'hello world' >> output.txt

#  <!-- If you specifically need to use Write-Host and capture its output, you might want to consider using Tee-Object: -->
write-host 'hello world' | Tee-Object -FilePath output.txt -Append