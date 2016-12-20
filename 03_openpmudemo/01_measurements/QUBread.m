function [D] = QUBread(file)

fid = fopen(file);
C = textscan(fid, '%s %s %f %f %f %f %s', 'delimiter', ',*', 'EmptyValue', 0);
D = [C{3} - min(C{3}), C{4}, C{5}, C{6}];
fclose(fid);
