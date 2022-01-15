function wsp = wspolczynniki_train()
%     ids_a = imageDatastore('dataset/a');
%     ids_b = imageDatastore('dataset/b');
%     ids_c = imageDatastore('dataset/c');    
%     ids_d = imageDatastore('dataset/d');
%     ids_e = imageDatastore('dataset/e');
%     ids_f = imageDatastore('dataset/f');
%     ids_g = imageDatastore('dataset/g');
%     ids_h = imageDatastore('dataset/h');
%     ids_i = imageDatastore('dataset/i');
%     ids_j = imageDatastore('dataset/j');
%     ids_k = imageDatastore('dataset/k');
%     ids_l = imageDatastore('dataset/l');
%     ids_m = imageDatastore('dataset/m');
%     ids_n = imageDatastore('dataset/n');
%     ids_o = imageDatastore('dataset/o');
%     ids_p = imageDatastore('dataset/p');
%     ids_q = imageDatastore('dataset/q');
%     ids_r = imageDatastore('dataset/r');
%     ids_s = imageDatastore('dataset/s');
%     ids_t = imageDatastore('dataset/t');
%     ids_u = imageDatastore('dataset/u');
%     ids_v = imageDatastore('dataset/v');
%     ids_w = imageDatastore('dataset/w');
%     ids_x = imageDatastore('dataset/x');
%     ids_y = imageDatastore('dataset/y');
%     ids_z = imageDatastore('dataset/z');
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
%     ids_ln = imageDatastore('operations/oper_ln');
    ids_expon = imageDatastore('operations/oper_exponentiation');

%     wa = wczytaj(ids_a);
%     wb = wczytaj(ids_b);
%     wc = wczytaj(ids_c);
%     wd = wczytaj(ids_d);
%     we = wczytaj(ids_e);
%     wf = wczytaj(ids_f);
%     wg = wczytaj(ids_g);
%     wh = wczytaj(ids_h);
%     wi = wczytaj(ids_i);
%     wj = wczytaj(ids_j);
%     wk = wczytaj(ids_k);
%     wl = wczytaj(ids_l);
%     wm = wczytaj(ids_m);
%     wn = wczytaj(ids_n);
%     wo = wczytaj(ids_o);
%     wp = wczytaj(ids_p);
%     wq = wczytaj(ids_q);
%     wr = wczytaj(ids_r);
%     ws = wczytaj(ids_s);
%     wt = wczytaj(ids_t);
%     wu = wczytaj(ids_u);
%     wv = wczytaj(ids_v);
%     ww = wczytaj(ids_w);
%     wx = wczytaj(ids_x);
%     wy = wczytaj(ids_y);
%     wz = wczytaj(ids_z);
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
%     wln = wczytaj(ids_ln);
    wexp = wczytaj(ids_expon);

%    trainin = [wa;wb;wc;wd;we;wf;wg;wh;wi;wj;wk;wl;wm;wn;wo;wp;wq;wr;ws;wt;wu;wv;ww;wx;wy;wz;w1;w2;w3;w4;w5;w6;w7;w8;w9]';
%    trainin = [wa;w1;w2;w3;w4;w5;w6;w7;w8;w9;w0]';
%    trainin = [w1;w2;w3;w4;w5;w6;w7;w8;w9;w0]';
    trainin = [w1;w2;w3;w4;w5;w6;w7;w8;w9;w0;wadd;wdiv;wmulti;wsub;wlarr;wrarr;wexp]';
  
% 
%     trainout = [repmat([1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wa),1);
%     repmat([0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wb),1);
%     repmat([0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wc),1);
%     repmat([0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wd),1);
%     repmat([0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(we),1);
%     repmat([0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wf),1);
%     repmat([0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wg),1);
%     repmat([0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wh),1);
%     repmat([0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wi),1);
%     repmat([0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wj),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wk),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wl),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wm),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wn),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wo),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wp),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wq),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wr),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(ws),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wt),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wu),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(wv),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0], length_w(ww),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0], length_w(wx),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0], length_w(wy),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0], length_w(wz),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0], length_w(w1),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0], length_w(w2),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0], length_w(w3),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0], length_w(w4),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0], length_w(w5),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0], length_w(w6),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0], length_w(w7),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0], length_w(w8),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1], length_w(w9),1)
%     ]';

%     trainout = [repmat([1,0,0,0,0,0,0,0,0], length_w(w1),1);
%     repmat([0,1,0,0,0,0,0,0,0], length_w(w2),1);
%     repmat([0,0,1,0,0,0,0,0,0], length_w(w3),1);
%     repmat([0,0,0,1,0,0,0,0,0], length_w(w4),1);
%     repmat([0,0,0,0,1,0,0,0,0], length_w(w5),1);
%     repmat([0,0,0,0,0,1,0,0,0], length_w(w6),1);
%     repmat([0,0,0,0,0,0,1,0,0], length_w(w7),1);
%     repmat([0,0,0,0,0,0,0,1,0], length_w(w8),1);
%     repmat([0,0,0,0,0,0,0,0,1], length_w(w9),1)
%     ]';

%  trainout = [repmat([1,0,0,0,0,0,0,0,0,0,0], length_w(w1),1);
%     repmat([0,1,0,0,0,0,0,0,0,0,0], length_w(w2),1);
%     repmat([0,0,1,0,0,0,0,0,0,0,0], length_w(w3),1);
%     repmat([0,0,0,1,0,0,0,0,0,0,0], length_w(w4),1);
%     repmat([0,0,0,0,1,0,0,0,0,0,0], length_w(w5),1);
%     repmat([0,0,0,0,0,1,0,0,0,0,0], length_w(w6),1);
%     repmat([0,0,0,0,0,0,1,0,0,0,0], length_w(w7),1);
%     repmat([0,0,0,0,0,0,0,1,0,0,0], length_w(w8),1);
%     repmat([0,0,0,0,0,0,0,0,1,0,0], length_w(w9),1);
%     repmat([0,0,0,0,0,0,0,0,0,1,0], length_w(w0),1);
%     repmat([0,0,0,0,0,0,0,0,0,0,1], length_w(wa),1);
%     ]';

% 
%  trainout = [repmat([1,0,0,0,0,0,0,0,0,0], length_w(w1),1);
%     repmat([0,1,0,0,0,0,0,0,0,0], length_w(w2),1);
%     repmat([0,0,1,0,0,0,0,0,0,0], length_w(w3),1);
%     repmat([0,0,0,1,0,0,0,0,0,0], length_w(w4),1);
%     repmat([0,0,0,0,1,0,0,0,0,0], length_w(w5),1);
%     repmat([0,0,0,0,0,1,0,0,0,0], length_w(w6),1);
%     repmat([0,0,0,0,0,0,1,0,0,0], length_w(w7),1);
%     repmat([0,0,0,0,0,0,0,1,0,0], length_w(w8),1);
%     repmat([0,0,0,0,0,0,0,0,1,0], length_w(w9),1);
%     repmat([0,0,0,0,0,0,0,0,0,1], length_w(w0),1);
%     ]';


 trainout = [repmat([1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(w1),1);
    repmat([0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(w2),1);
    repmat([0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(w3),1);
    repmat([0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0], length_w(w4),1);
    repmat([0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0], length_w(w5),1);
    repmat([0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0], length_w(w6),1);
    repmat([0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0], length_w(w7),1);
    repmat([0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0,0], length_w(w8),1);
    repmat([0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0,0], length_w(w9),1);
    repmat([0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0,0], length_w(w0),1);
    repmat([0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0,0], length_w(wadd),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0,0], length_w(wdiv),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0,0], length_w(wmulti),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0,0], length_w(wsub),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0,0], length_w(wlarr),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1,0], length_w(wrarr),1);
    repmat([0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,1], length_w(wexp),1);
    ]';


    

%%factor double from 50 to 100
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