function padded = HammingCode(arr,padding)
    totalBits = size(arr,2);
    messageSize = 2^padding - padding - 1;
    blockSize = 2^padding - 1;
    numBlocks = ceil(totalBits/messageSize);
    padded = zeros(1,numBlocks);
    for i = 1:numBlocks
        
    end
end