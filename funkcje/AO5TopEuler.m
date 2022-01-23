function w = AO5TopEuler(im)
    h = size(im, 1);
    im1 = im(h*0.35:h, :);
    w = AO5Euler(im1);
end

