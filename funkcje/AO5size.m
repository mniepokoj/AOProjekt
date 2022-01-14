function r = AO5size(im)
    h = size(im, 2);
    im = regionprops(im, 'all');
    r = im.Centroid(2)/h;
    r = im.Eccentricity;
    r = im.ConvexArea;
end
