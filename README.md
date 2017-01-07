# RubySimpleBatchFileDownloader

Usage: ruby downloader.rb [download-list.txt] [output folder]
The list of file to download should be in this format:

```
url
filename
url
filename
```

**Example usage:**

ruby downloader.rb T:\GoogleDrive\HTMLslides\HTMLslides\html_slides-updated\9.1\audio-list.log T:\GoogleDrive\HTMLslides\HTMLslides\html_slides-updated\9.1\audio

ruby downloader.rb T:\GoogleDrive\HTMLslides\HTMLslides\html_slides-updated\9.2\audio-list.log T:\GoogleDrive\HTMLslides\HTMLslides\html_slides-updated\9.2\audio

ruby downloader.rb T:\GoogleDrive\HTMLslides\HTMLslides\html_slides-updated\9.3\audio-list.log T:\GoogleDrive\HTMLslides\HTMLslides\html_slides-updated\9.3\audio
