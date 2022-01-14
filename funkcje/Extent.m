function r = Extent(im)
    im = regionprops(im, 'all');
    r = im.Extent;
end
