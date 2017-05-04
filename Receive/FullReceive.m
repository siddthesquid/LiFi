function final = FullReceive(filename,earlyCrop,glitchSize,threshold,s)
    real = RawToReal(filename,glitchSize);
    cropped = RealToCropped(real(earlyCrop:end),threshold);
    final = CroppedToArray(cropped,s);
end