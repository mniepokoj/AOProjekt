pos = [0 0];
%chars1 = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"];

%chars2 = ["+", "/", "*", "-"];
%folders = ["oper_addition", "oper_division", "oper_multiplication", "oper_subtraction"];

chars3 = ["(", ")", "n", "^"];
folders2 = ["oper_left_arrow", "oper_right_arrow", "oper_ln", "oper_exponentiation"];

fonts = {'Arial', 'Amiri', 'Caladea', 'Cambria', 'Candara', 'Carlito', 'Courier', 'Ebrima', 'Gadugi', 'Impact', 'Times', 'Sylfaen', 'Tahoma', 'Times New Roman', 'Verdana', 'Microsoft Sans Serif', 'Rubik-Regular', 'Gentium Basic', 'Alef Regular', 'Bahnschrift'};

for j = 1: length(fonts)
%     num1 = 0;
%     for i = 1:  length(chars1)
%         im = imread('baza.png');
%         im = insertText(im, pos, chars1{i}, 'FontSize', 110, 'BoxColor', 'white', 'Font', fonts{j});
%         str = append( "number/num_", num2str(num1), "/", fonts{j}, "_", num2str(num1), ".png" );
%         imwrite(im,  str);
%         num1 = num1 + 1;
%     end

%     num2 = 0;
%     for k = 1: length(chars2)
%         im = imread('baza.png');
%         im = insertText(im, pos, chars2{k}, 'FontSize', 110, 'BoxColor', 'white', 'Font', fonts{j});
%         str = append( "operations/", folders{k}, "/", fonts{j}, "_", num2str(num2), ".png" );
%         imwrite(im,  str);
%         num2 = num2 + 1;
%     end

    num2 = 0;
    for l = 1: length(chars3)
        im = imread('baza.png');
        im = insertText(im, pos, chars3{l}, 'FontSize', 110, 'BoxColor', 'white', 'Font', fonts{j});
        str = append( "operations/", folders2{l}, "/", fonts{j}, "_", num2str(num2), ".png" );
        if exist(str, 'file')
            delete(str);        
        end
        imwrite(im,  str, 'png');
        num2 = num2 + 1;
    end
end