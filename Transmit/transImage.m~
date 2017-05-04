sampPSym = 10;
imarr = ImageToArray('SmallFile.jpg');
leading = [1 imarr];
duplicated = vecDup(leading,sampPSym,1,0.5);
pad = zeros(1,600000);
padded = [pad duplicated pad];
f1 = fopen('smallfile.dat','w');
x_tmp = zeros(length(padded)*2,1);
x_tmp(1:2:end) = real(padded);
plot(x_tmp)
fwrite(f1, x_tmp, 'float32');
fclose(f1);
