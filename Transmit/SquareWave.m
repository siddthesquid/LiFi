function wave = SquareWave(zeroPad,pulseLength,pulses)
    samples = pulseLength * pulses;
    wave = [zeros(1,zeroPad) (-1).^(ceil((1:samples)/pulseLength))*.5];
end