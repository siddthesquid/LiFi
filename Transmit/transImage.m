sampPSym = 10;
imarr = ImageToArray('team_selfie_opt.jpg');
% leading bit so receiver can determine whether bits are flipped
leading = [1 imarr];
leading = HammingEncode(leading);

duplicated = vecDup(leading,sampPSym,1, 0.5);
% pad the beginning and end of symbol with zeros
pad = zeros(1,1000000);
padded = [pad duplicated pad];
plot(padded);
f1 = fopen('selfie.dat','w');
x_tmp = zeros(length(padded)*2,1);
x_tmp(1:2:end) = real(padded);
figure;
plot(x_tmp)
fwrite(f1, x_tmp, 'float32');
fclose(f1);
