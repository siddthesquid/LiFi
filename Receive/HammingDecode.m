function fixed = HammingDecode(arr)

fixed = [];

for i = 1:127:length(arr)-126
    endval = i+126;
    fixed = [fixed HammingDecodePacket(arr(i:endval),7)];
end


end

