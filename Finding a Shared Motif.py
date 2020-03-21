from Bio import SeqIO

sequences = []
rosalind = open("rosalind_lcsm.txt", "r")
for i in SeqIO.parse(rosalind, 'fasta'):
    sequences.append(i.seq)

substring = [sequences[0][i: j] for i in range(len(sequences[0]))
             for j in range(i + 1, len(sequences[0]) + 1)]
sorted_substring = sorted(substring, key=len)
substrings = sorted_substring[::-1]

is_found = False
result = None

for i in substrings:
    if is_found:
        break
    for j in sequences:
        if i not in j:
            is_found = False
            break
        else:
            is_found = True
    if is_found:
        result = i

print(result)
