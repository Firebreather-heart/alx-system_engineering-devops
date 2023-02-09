import os
line1 = "#!/bin/bash\n"
line2 = input("enter command")
fn = input('enter filename')
lb = [line1, line2]
with open(fn, 'w') as f:
    for i in lb:
        f.writelines(i)
    f.writelines('\n')

