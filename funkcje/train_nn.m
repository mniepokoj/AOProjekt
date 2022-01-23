function train_nn()
    imgs_x = imageDatastore('letters/x');
    imgs_y = imageDatastore('letters/y');
    imgs_1 = imageDatastore('number/num_1');
    imgs_2 = imageDatastore('number/num_2');
    imgs_3 = imageDatastore('number/num_3');
    imgs_4 = imageDatastore('number/num_4');
    imgs_5 = imageDatastore('number/num_5');
    imgs_6 = imageDatastore('number/num_6');
    imgs_7 = imageDatastore('number/num_7');
    imgs_8 = imageDatastore('number/num_8');
    imgs_9 = imageDatastore('number/num_9');
    imgs_0 = imageDatastore('number/num_0');
    imgs_add = imageDatastore('operations/oper_addition');
    imgs_div = imageDatastore('operations/oper_division');
    imgs_multi = imageDatastore('operations/oper_multiplication');
    imgs_sub = imageDatastore('operations/oper_subtraction');
    imgs_left_arr = imageDatastore('operations/oper_left_arrow');
    imgs_right_arr = imageDatastore('operations/oper_right_arrow');
    imgs_expon = imageDatastore('operations/oper_exponentiation');


    w1 = process_imgs(imgs_1);
    w2 = process_imgs(imgs_2);
    w3 = process_imgs(imgs_3);
    w4 = process_imgs(imgs_4);
    w5 = process_imgs(imgs_5);
    w6 = process_imgs(imgs_6);
    w7 = process_imgs(imgs_7);
    w8 = process_imgs(imgs_8);
    w9 = process_imgs(imgs_9);
    w0 = process_imgs(imgs_0);

    wadd = process_imgs(imgs_add);
    wdiv = process_imgs(imgs_div);
    wmulti = process_imgs(imgs_multi);
    wsub = process_imgs(imgs_sub);
    wlarr = process_imgs(imgs_left_arr);
    wrarr = process_imgs(imgs_right_arr);
    wexp = process_imgs(imgs_expon);
     wx = process_imgs(imgs_x);
     wy = process_imgs(imgs_y);

    trainin = [w1;w2;w3;w4;w5;w6;w7;w8;w9;w0;wadd;wdiv;wmulti;wsub;wlarr;wrarr;wexp;wx;wy]';

 trainout = [
    repmat([1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(w1),1);
    repmat([0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(w2),1);
    repmat([0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(w3),1);
    repmat([0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(w4),1);
    repmat([0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(w5),1);
    repmat([0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(w6),1);
    repmat([0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0], length_w(w7),1);
    repmat([0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0], length_w(w8),1);
    repmat([0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0], length_w(w9),1);
    repmat([0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0], length_w(w0),1);
    repmat([0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0], length_w(wadd),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0], length_w(wdiv),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0], length_w(wmulti),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0], length_w(wsub),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0], length_w(wlarr),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0], length_w(wrarr),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0], length_w(wexp),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0], length_w(wx),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1], length_w(wy),1);
    ]';

nn = feedforwardnet(25);
nn.adaptFcn = 'adaptwb';
nn.divideFcn = 'dividerand';
nn.divideMode = 'sample';
nn.layers{1}.transferFcn = 'logsig';
nn.layers{2}.transferFcn = 'tansig';
nn.trainFcn = 'trainbr';
nn.performFcn = 'mse';
nn = train(nn,trainin,trainout);

new_neural_network = nn;
save new_neural_netwoek;
end