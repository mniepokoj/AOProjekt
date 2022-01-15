function r = Extent(im)
    im = regionprops(im, 'Extent');
    r = im.Extent;
end
