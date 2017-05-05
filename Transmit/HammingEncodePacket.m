function encoded = HammingEncodePacket(arr, padding)
    encoded = zeros(length(arr)+padding,1);
    nonpar = floor(log2(1:length(encoded)))~=log2(1:length(encoded));
    encoded(nonpar) = arr; %filling in non parity bits
    for i = 1:padding
        encoded(2^(i-1)) = mod(sum(encoded(mod(bitshift(1:length(encoded),1-i),2)==1)),2);
    end
end