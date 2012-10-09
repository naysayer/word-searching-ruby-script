Word Scanning Script
====================

This simple script takes 2 text files, one with a passage with words hidden in it; and the other with possible names that are found within the passage. This script scans both files and creates an array for the hidden words, and a string for the passage. The script then uses regex and removed all non word characters from the string. It then iterates over the array to find any hidden words in the text. Finally, it reverses the string to see if any words are hidden backwards; before putting the found words in an array and printing it.