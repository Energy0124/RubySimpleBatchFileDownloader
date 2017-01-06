require 'open-uri'
counter=0
file = File.new("list.log", "r")
is_url=true
while (line = file.gets)
  unless line.strip!.empty?
    url=line
    while (line2 = file.gets)
      unless line2.strip!.empty?
        name=line2

        unless File.file?(name)
          p name
          p url
          download = open(url)
          IO.copy_stream(download, name)
        end
        counter+=1
        break
      end

    end
  end

end
puts 'File downloaded'
file.close