function r = Eccentricity(im)
    im = regionprops(im, 'all');
    r = im.Eccentricity;
end
