function dL_d_ = derivatives_question_8(state_array)

    x1 = state_array(1);
    x2 = state_array(2);
    x3 = state_array(3);
    x4 = state_array(4);
    x5 = state_array(5);
    x6 = state_array(6);
    x7 = state_array(7);
    x8 = state_array(8);
    
    p1 = state_array(9);
    p2 = state_array(10);
    p3 = state_array(11);
    p4 = state_array(12);
    p5 = state_array(13);
    p6 = state_array(14);
    p7 = state_array(15);
    p8 = state_array(16);
    p9 = state_array(17);
    p10 = state_array(18);
    p11 = state_array(19);
    p12 = state_array(20);
    p13 = state_array(21);
    p14 = state_array(22);
    p15 = state_array(23);
    p16 = state_array(24);

    s1 = state_array(25);
    s2 = state_array(26);
    s3 = state_array(27);
    s4 = state_array(28);
    s5 = state_array(29);
    s6 = state_array(30);
    s7 = state_array(31);
    s8 = state_array(32);
    s9 = state_array(33);
    s10= state_array(34);
    s11= state_array(35);
    s12= state_array(36);
    
dL_dx1 = p7 - p5 - (504000*p3)/(x1^2*x3^2) - (1372*p4)/(625*x1^2*x3^3) - (3009750*10^(1/2)*p1*x1^5*x3^2*((2^(1/2)*5^(1/2)*x3)/112 - 1))/(49*(x1^6*x3^2)^(1/2));
dL_dx2 = p16 - p7 - p6 + (221*x2*x4)/50 - (p2*(36000000/(x2^3*x4^2) + (6000*(3000*x4 + 84000))/(x2^3*x4*((x2 + x3)^2/4 + x4^2/12)) + (3000*(x2/2 + x3/2)*(3000*x4 + 84000))/(x2^2*x4*((x2 + x3)^2/4 + x4^2/12)^2) + ((3000*x4 + 84000)^2*((x2 + x3)^2 + x4^2))/(4*x2^3*x4^2*((x2 + x3)^2/4 + x4^2/12)^2) - ((2*x2 + 2*x3)*(3000*x4 + 84000)^2)/(8*x2^2*x4^2*((x2 + x3)^2/4 + x4^2/12)^2) + ((x2/2 + x3/2)*(3000*x4 + 84000)^2*((x2 + x3)^2 + x4^2))/(4*x2^2*x4^2*((x2 + x3)^2/4 + x4^2/12)^3)))/(2*(18000000/(x2^2*x4^2) + (3000*(3000*x4 + 84000))/(x2^2*x4*((x2 + x3)^2/4 + x4^2/12)) + ((3000*x4 + 84000)^2*((x2 + x3)^2 + x4^2))/(8*x2^2*x4^2*((x2 + x3)^2/4 + x4^2/12)^2))^(1/2));
dL_dx3 = p9 - p8 - (1008000*p3)/(x1*x3^3) - (4116*p4)/(625*x1*x3^4) - (p2*((3000*(x2/2 + x3/2)*(3000*x4 + 84000))/(x2^2*x4*((x2 + x3)^2/4 + x4^2/12)^2) - ((2*x2 + 2*x3)*(3000*x4 + 84000)^2)/(8*x2^2*x4^2*((x2 + x3)^2/4 + x4^2/12)^2) + ((x2/2 + x3/2)*(3000*x4 + 84000)^2*((x2 + x3)^2 + x4^2))/(4*x2^2*x4^2*((x2 + x3)^2/4 + x4^2/12)^3)))/(2*(18000000/(x2^2*x4^2) + (3000*(3000*x4 + 84000))/(x2^2*x4*((x2 + x3)^2/4 + x4^2/12)) + ((3000*x4 + 84000)^2*((x2 + x3)^2 + x4^2))/(8*x2^2*x4^2*((x2 + x3)^2/4 + x4^2/12)^2))^(1/2)) - (501625*2^(1/2)*5^(1/2)*10^(1/2)*p1*(x1^6*x3^2)^(1/2))/2744 - (1003250*10^(1/2)*p1*x1^6*x3*((2^(1/2)*5^(1/2)*x3)/112 - 1))/(49*(x1^6*x3^2)^(1/2));
dL_dx4 = p12 - p11 + (221*x2^2)/100 - (p2*(36000000/(x2^2*x4^3) - 9000000/(x2^2*x4*((x2 + x3)^2/4 + x4^2/12)) + (500*(3000*x4 + 84000))/(x2^2*((x2 + x3)^2/4 + x4^2/12)^2) + (3000*(3000*x4 + 84000))/(x2^2*x4^2*((x2 + x3)^2/4 + x4^2/12)) - (3000*x4 + 84000)^2/(4*x2^2*x4*((x2 + x3)^2/4 + x4^2/12)^2) - ((18000000*x4 + 504000000)*((x2 + x3)^2 + x4^2))/(8*x2^2*x4^2*((x2 + x3)^2/4 + x4^2/12)^2) + ((3000*x4 + 84000)^2*((x2 + x3)^2 + x4^2))/(24*x2^2*x4*((x2 + x3)^2/4 + x4^2/12)^3) + ((3000*x4 + 84000)^2*((x2 + x3)^2 + x4^2))/(4*x2^2*x4^3*((x2 + x3)^2/4 + x4^2/12)^2)))/(2*(18000000/(x2^2*x4^2) + (3000*(3000*x4 + 84000))/(x2^2*x4*((x2 + x3)^2/4 + x4^2/12)) + ((3000*x4 + 84000)^2*((x2 + x3)^2 + x4^2))/(8*x2^2*x4^2*((x2 + x3)^2/4 + x4^2/12)^2))^(1/2));
dL_dx5 = p13;
dL_dx6 = -p10;
dL_dx7 = p14;
dL_dx8 = p15;
dL_dp1 = -(1003250*10^(1/2)*(x1^6*x3^2)^(1/2)*((2^(1/2)*5^(1/2)*x3)/112 - 1))/49;
dL_dp2 = (18000000/(x2^2*x4^2) + (3000*(3000*x4 + 84000))/(x2^2*x4*((x2 + x3)^2/4 + x4^2/12)) + ((3000*x4 + 84000)^2*((x2 + x3)^2 + x4^2))/(8*x2^2*x4^2*((x2 + x3)^2/4 + x4^2/12)^2))^(1/2);
dL_dp3 = 504000/(x1*x3^2);
dL_dp4 = 1372/(625*x1*x3^3);
dL_dp5 = s1^2 - x1 + 2;
dL_dp6 = s2^2 - x2 + 1/8;
dL_dp7 = x1 - x2 + s3^2;
dL_dp8 = s4^2 - x3 + 1/10;
dL_dp9 = x3 + s5^2 - 10;
dL_dp10 = s6^2 - x6 + 6000;
dL_dp11 = s7^2 - x4 + 1/10;
dL_dp12 = x4 + s8^2 - 10;
dL_dp13 = x5 + s9^2 - 13600;
dL_dp14 = x7 + s10^2 - 30000000;
dL_dp15 = x8 + s11^2 - 1/4;
dL_dp16 = x2 + s12^2 - 2;
dL_ds1 = 2*p5*s1;
dL_ds2 = 2*p6*s2;
dL_ds3 = 2*p7*s3;
dL_ds4 = 2*p8*s4;
dL_ds5 = 2*p9*s5;
dL_ds6 = 2*p10*s6;
dL_ds7 = 2*p11*s7;
dL_ds8 = 2*p12*s8;
dL_ds9 = 2*p13*s9;
dL_ds10 = 2*p14*s10;
dL_ds11 = 2*p15*s11;
dL_ds12 = 2*p16*s12;
    

    dL_d_(1) = dL_dx1;
    dL_d_(2) = dL_dx2;
    dL_d_(3) = dL_dx3;
    dL_d_(4) = dL_dx4;
    dL_d_(5) = dL_dx5;
	dL_d_(6) = dL_dx6;
    dL_d_(7) = dL_dx7;
    dL_d_(8) = dL_dx8;
	
    dL_d_(9)  = dL_dp1;
    dL_d_(10) = dL_dp2;
    dL_d_(11) = dL_dp3;
    dL_d_(12) = dL_dp4;
    dL_d_(13) = dL_dp5;
    dL_d_(14) = dL_dp6;
    dL_d_(15) = dL_dp7;
    dL_d_(16) = dL_dp8;
    dL_d_(17) = dL_dp9;
    dL_d_(18) = dL_dp10;
    dL_d_(19) = dL_dp11;
    dL_d_(20) = dL_dp12;
    dL_d_(21) = dL_dp13;
    dL_d_(22) = dL_dp14;
    dL_d_(23) = dL_dp15;
    dL_d_(24) = dL_dp16;
    
    dL_d_(25)  = dL_ds1;
    dL_d_(26) = dL_ds2;
    dL_d_(27) = dL_ds3;
    dL_d_(28) = dL_ds4;
    dL_d_(29) = dL_ds5;
    dL_d_(30) = dL_ds6;
    dL_d_(31) = dL_ds7;
    dL_d_(32) = dL_ds8;
    dL_d_(33) = dL_ds9;
    dL_d_(34) = dL_ds10;
    dL_d_(35) = dL_ds11;
    dL_d_(36) = dL_ds12;
    
    
end