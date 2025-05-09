# find all files in folder

# find all images in folder

# create random new string as filename



extensions = ["jpg", "bmp", "webp", "jxl", "jpeg", "png"]
files = ["file.jpg", "file.bmp", "file.webp", "file.jxl", "file.jpeg", "file.png"]

Enum.map(files, fn f -> String.ends_with?(f, extensions) end)
