from os import listdir
from subprocess import call

images = [file for file in listdir(".") if file.endswith(".png") and file != "1024.png"]

for image in images:
    size = image.split(".")[0]
    args = ["magick", "1024.png", "-resize", f"{size}x{size}", image]
    print(" ".join(args))
    call(args)
