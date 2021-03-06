require 'open-uri'
=begin
Usage: ruby downloader.rb [download-list.txt] [output folder]
The list of file to download should be in this format:

url
filename
url
filename
...

Example usage:
ruby downloader.rb T:\GoogleDrive\HTMLslides\HTMLslides\html_slides-updated\9.1\audio-list.log T:\GoogleDrive\HTMLslides\HTMLslides\html_slides-updated\9.1\audio
ruby downloader.rb T:\GoogleDrive\HTMLslides\HTMLslides\html_slides-updated\9.2\audio-list.log T:\GoogleDrive\HTMLslides\HTMLslides\html_slides-updated\9.2\audio
ruby downloader.rb T:\GoogleDrive\HTMLslides\HTMLslides\html_slides-updated\9.3\audio-list.log T:\GoogleDrive\HTMLslides\HTMLslides\html_slides-updated\9.3\audio

=end

counter=0
if ARGV[0]==NIL
  file = File.new("audio-list.log", "r")
else
  file = File.new(ARGV[0], "r")
end
is_url=true
while (line = file.gets)
  unless line.strip!.empty?
    url=line
    while (line2 = file.gets)
      unless line2.strip!.empty?
        name=line2
        if ARGV[1]!=NIL
          name=ARGV[1]+"/"+name
        end
        unless File.file?(name)
          puts name
          puts url
          download = open(url)
          IO.copy_stream(download, name)
          counter+=1
        end
        break
      end
    end
  end
end
puts  "#{counter} files downloaded"
file.close