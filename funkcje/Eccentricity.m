function r = Eccentricity(im)
    im = regionprops(im, 'Eccentricity');
    r = im.Eccentricity;
end
