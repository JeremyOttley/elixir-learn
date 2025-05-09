defmodule Renamer do
  @extensions ["jpg", "bmp", "webp", "jxl", "jpeg", "png"]
  @files ["file.jpg", "file.bmp", "file.webp", "file.jxl", "file.jpeg", "file.png"]
  def process() do
    Enum.map(@files, fn file -> String.ends_with?(file, @extensions) end)
  end
end

x = Renamer.process()
IO.puts("#{inspect x}")
