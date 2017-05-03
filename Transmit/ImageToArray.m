function pixArray = ImageToArray(imageName)
    im = imread(imageName);
    rows = size(im,1);
    cols = size(im,2);
    
    r = im(:,:,1);
    g = im(:,:,2);
    b = im(:,:,3);
    
    %2^8 (256) means bit shifting 
    datasize = 256;
    combined = uint32(r) * datasize * datasize + uint32(g) * datasize + uint32(b);
    
    flat = reshape(combined', [1 rows * cols]);
    binrep = de2bi(flat,32);
    pixArray = logical(reshape(binrep', [1 rows * cols * 32]));
end