subdir(documents,private).
subdir(documents,work).
subdir(private,images).
subdir(private,videos).
subdir(work,research).
subdir(work,teaching).

descendants(X,Y) :- subdir(X,Y),subdir(X,Z);subdir(Z,Y).