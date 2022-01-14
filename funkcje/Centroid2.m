function r = Centroid2(im)
    h = size(im, 2);
    im = regionprops(im, 'all');
    r = im.Centroid(2)/h;
end
