function mhat = CroppedToArray(cropped,s)
    leading = cropped(1) >= 0;
    rest = cropped(s+1:end);
    metrics = zeros(1,ceil(length(rest)/s));
    for k = 1:s
        metrics(k) = rms(rest(k:s:end)); % find the ideal starting point for sampling
    end
    [~,best] = max(metrics);
    mhatmaybe = (sign(rest(best:s:end)+0.0000000001) + 1)./2;
    if leading==0
        mhat = ~mhatmaybe;
    else
        mhat = mhatmaybe;
    end
end