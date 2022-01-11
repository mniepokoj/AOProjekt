function w = AO5BottomEuler(im)
    h = size(im, 1);
    im1 = im(1:0.65*h, :);
    w = AO5Euler(im1);
end