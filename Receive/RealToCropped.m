function cropped = RealToCropped(xreal,threshold)
    xabs = abs(xreal);
    indices = find(xabs>=threshold,length(xabs));
    first = indices(1);
    last = indices(end);
    cropped = xreal(first:last);
end