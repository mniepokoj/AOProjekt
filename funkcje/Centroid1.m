function r = Centroid1(im)
    w = size(im, 1);
    im = regionprops(im, 'Centroid');
    r = im.Centroid(1)/w;
end
