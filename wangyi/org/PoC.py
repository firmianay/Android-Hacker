import zipfile
import sys
z = zipfile.ZipFile(sys.argv[1], "a")
z.write(sys.argv[2])
z.close()
