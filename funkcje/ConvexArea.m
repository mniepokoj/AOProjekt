function r = ConvexArea(im)
    [h, w] = size(im);
    im = regionprops(im, 'ConvexArea');
    r = im.ConvexArea/(h*w);
end
