function r = ConvexArea(im)
    [h, w] = size(im);
    im = regionprops(im, 'all');
    r = im.ConvexArea/(h*w);
end
