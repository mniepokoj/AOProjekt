function r = Perimeter(im)
    [h, w] = size(im);
    im = regionprops(im, 'Perimeter');
    r = im.Perimeter/(h+h+w+w);
end
