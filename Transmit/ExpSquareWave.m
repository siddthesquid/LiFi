function wave = ExpSquareWave(zeroPad,pulseLength,pulses)
    samples = pulseLength * 2^pulses;
    wave = [zeros(1,zeroPad) (-1).^(ceil(log2(ceil((1:samples)/pulseLength ))))*.5];
end