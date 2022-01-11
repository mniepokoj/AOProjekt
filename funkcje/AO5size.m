function S = AO5size(im)
    S = sum(sum(bwmorph(im,'remove')))/;
end
