function r = Centroid2(im)
    h = size(im, 2);
    im = regionprops(im, 'Centroid');
    r = im.Centroid(2)/h;
end
