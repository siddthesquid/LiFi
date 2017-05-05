function final = FullReceive(filename,earlyCrop,glitchSize,threshold,s)
    real = RawToReal(filename,glitchSize);
    cropped = RealToCropped(real(earlyCrop:end),threshold);
    noise = normrnd(0, 0.1628, 1, length(cropped));
    cropped = cropped + noise;
    bitswErr = CroppedToArray(cropped,s);
    final = HammingDecode(bitswErr);
end