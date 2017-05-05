function corrected = HammingDecodePacket(array, parityPositions)

errorIndex = 0; 

for i = 1:parityPositions
    %get indices of array that equal 1 or are controlled by this parity bit
    indxsControlByPB = mod(bitshift(1:length(array), 1-i), 2) == 1; 
    %using the indices to sum the value of the bits at those indices 
    paritySum = mod(sum(array(indxsControlByPB)), 2)*2^(i-1); 
    errorIndex = errorIndex + paritySum;     
end 
if(errorIndex ~= 0)
   
   array(errorIndex) = ~array(errorIndex);  
end 

nonparbits = floor(log2(1:length(array)))~= log2(1:length(array)); 
corrected = array(nonparbits); 

end 