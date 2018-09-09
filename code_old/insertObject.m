function re_objlist = insertObject(objlist,obj)

[row column] = size(objlist);

num = 0;

if row == 0
    [objrow objcolumn] = size(obj);
    
end