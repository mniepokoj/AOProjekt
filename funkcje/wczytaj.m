function w = wczytaj(ids)
    len = get_length(ids);
    fun = {@AO5RBlairBliss, @AO5RCircularityL, @AO5RCircularityS, @AO5RShape, @AO5RDanielsson, @AO5RHaralick, @AO5RMalinowska, @AO5TopEuler, @AO5BottomEuler,  @AO5Euler, @Centroid1,@Centroid2, @Eccentricity, @ConvexArea, @Solidity, @Extent, @Perimeter};
    w = zeros(len, length(fun));
    for x = 1:len
        img = double(readimage(ids, x))/255;
        img = img(:,:,1);
        img = ~imbinarize(img,0.95);
        img = imopen(img,ones(2));
        a = regionprops(img, 'Image');
        for i = 1:length(a)
            for j = 1:length(fun)
                binary_image = a(i).Image;
                binary_image = padarray(binary_image,0);
                binary_image = imresize(binary_image, [200, 200]);
                w(x,j) =  fun{j}(binary_image);
            end
        end
    end
end
