function wsp = wspolczynniki_train()
     ids_x = imageDatastore('letters/x');
     ids_y = imageDatastore('letters/y');
    ids_1 = imageDatastore('number/num_1');
    ids_2 = imageDatastore('number/num_2');
    ids_3 = imageDatastore('number/num_3');
    ids_4 = imageDatastore('number/num_4');
    ids_5 = imageDatastore('number/num_5');
    ids_6 = imageDatastore('number/num_6');
    ids_7 = imageDatastore('number/num_7');
    ids_8 = imageDatastore('number/num_8');
    ids_9 = imageDatastore('number/num_9');
    ids_0 = imageDatastore('number/num_0');
    ids_add = imageDatastore('operations/oper_addition');
    ids_div = imageDatastore('operations/oper_division');
    ids_multi = imageDatastore('operations/oper_multiplication');
    ids_sub = imageDatastore('operations/oper_subtraction');
    ids_left_arr = imageDatastore('operations/oper_left_arrow');
    ids_right_arr = imageDatastore('operations/oper_right_arrow');
    ids_expon = imageDatastore('operations/oper_exponentiation');


    w1 = wczytaj(ids_1);
    w2 = wczytaj(ids_2);
    w3 = wczytaj(ids_3);
    w4 = wczytaj(ids_4);
    w5 = wczytaj(ids_5);
    w6 = wczytaj(ids_6);
    w7 = wczytaj(ids_7);
    w8 = wczytaj(ids_8);
    w9 = wczytaj(ids_9);
    w0 = wczytaj(ids_0);

    wadd = wczytaj(ids_add);
    wdiv = wczytaj(ids_div);
    wmulti = wczytaj(ids_multi);
    wsub = wczytaj(ids_sub);
    wlarr = wczytaj(ids_left_arr);
    wrarr = wczytaj(ids_right_arr);
    wexp = wczytaj(ids_expon);
     wx = wczytaj(ids_x);
     wy = wczytaj(ids_y);

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

ocr_final_8_new = nn;
save ocr_final_8_new;
end