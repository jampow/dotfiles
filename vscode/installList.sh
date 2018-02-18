while read e; do
  code --install-extension $e
done < extensions.txt
