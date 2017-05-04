function upDup = vecDup( x, dupFactor, scale, offset )
    x_tmp = repmat(x',[1 dupFactor]);
    x_transmit = reshape(x_tmp.', 1, []);
    upDup = x_transmit*scale - offset;
end

