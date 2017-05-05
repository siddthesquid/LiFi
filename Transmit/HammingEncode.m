function padded = HammingEncode(arr)
zeropad = 120-mod(length(arr), 120);
arr = [arr zeros(1, zeropad)];
padded = [];


for i = 1:120:length(arr)-119
    endval = i+119;
    padded = [padded HammingEncodePacket(arr(i:endval), 7)];
end


end
