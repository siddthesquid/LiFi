function arrFromImage = ArrayToImage(arr, rows, cols)
    %what to store the image in
    zeroim = zeros(rows, cols, 3);
    %each row in out is a b, g, r, 0 in that order, repeating
    out = reshape(arr, [8 10000])';
    outnum = bi2de(out);
    b = outnum(1:4:end,:);
    b = uint8(reshape(b, [rows cols]))';
    g = outnum(2:4:end,:);
    g = uint8(reshape(g, [rows cols]))';
    r = outnum(3:4:end,:);
    r = uint8(reshape(r, [rows cols]))';
    img = cat(3, r, g, b);
    image(img);
    
end