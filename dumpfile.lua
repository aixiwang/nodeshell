 file.open("nodeshell.lua")
 repeat
   local line=file.readline()
   if line then line=(string.gsub(line,"\n","")) print(line) end
 until not line
 file.close()