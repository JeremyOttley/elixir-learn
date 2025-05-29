# Get current directory
current_dir = File.cwd!()

# Function to recursively find all files
my_files = File.ls!(current_dir)

defmodule Renamer do
  @extensions ["jpg", "bmp", "webp", "jxl", "jpeg", "png"]
  @files ["file.jpg", "file.bmp", "file.webp", "file.jxl", "file.jpeg", "file.png"]
  def process() do
    Enum.map(@files, fn file -> String.ends_with?(file, @extensions) end)
  end
end

x = Renamer.process()
IO.puts("#{inspect x}")
