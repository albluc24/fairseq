import sys
from tqdm import tqdm
orig=sys.argv[1]
dest=sys.argv[2]
orig=open(orig, 'r').read()
dest=open(dest, 'w+')
words={}
for l in tqdm(orig.split('\n')):
    lnew=' '.join(list(l.rstrip().replace(' ', '')))
    dest.write(lnew+'\n')