N = 5;
lambda = 1;
R0 = 0.1405;
m0 = 1;
md = 0.07487;


syms x
func = legendreP(5,x);
L_1 = diff(func,x,1);
t = vpasolve(L_1==0);
t = [-1 t' 1]';



syms tau_f
syms a1_1 a1_2 a1_3 a1_4 a1_5 a1_6
syms a2_1 a2_2 a2_3 a2_4 a2_5 a2_6
syms a3_1 a3_2 a3_3 a3_4 a3_5 a3_6

state_array = [tau_f...
                a1_1 a1_2 a1_3 a1_4 a1_5 a1_6...
                a2_1 a2_2 a2_3 a2_4 a2_5 a2_6...
                a3_1 a3_2 a3_3 a3_4 a3_5 a3_6];


J = tau_f;

for k = 1:N+1
    J = J + (2/(N*(N+1)))*legendreP(5,t(k))^(-2);
end

%% output the functions into cmd
for i = 1:18
    fprintf("F" + string(i) +...
            " = " + string() + ";\n");
end



%% A0k
A0_1 =  - a2_1 + 2*(get_D(1,1)*a1_1 + get_D(1,2)*a1_2 + get_D(1,3)*a1_3+ get_D(1,4)*a1_4 + get_D(1,5)*a1_5 + get_D(1,6)*a1_6);
A0_2 =  - a2_2 + 2*(get_D(2,1)*a1_1 + get_D(2,2)*a1_2 + get_D(2,3)*a1_3+ get_D(2,4)*a1_4 + get_D(2,5)*a1_5 + get_D(2,6)*a1_6);
A0_3 =  - a2_3 + 2*(get_D(3,1)*a1_1 + get_D(3,2)*a1_2 + get_D(3,3)*a1_3+ get_D(3,4)*a1_4 + get_D(3,5)*a1_5 + get_D(3,6)*a1_6);
A0_4 =  - a2_4 + 2*(get_D(4,1)*a1_1 + get_D(4,2)*a1_2 + get_D(4,3)*a1_3+ get_D(4,4)*a1_4 + get_D(4,5)*a1_5 + get_D(4,6)*a1_6);
A0_5 =  - a2_5 + 2*(get_D(5,1)*a1_1 + get_D(5,2)*a1_2 + get_D(5,3)*a1_3+ get_D(5,4)*a1_4 + get_D(5,5)*a1_5 + get_D(5,6)*a1_6);
A0_6 =  - a2_6 + 2*(get_D(6,1)*a1_1 + get_D(6,2)*a1_2 + get_D(6,3)*a1_3+ get_D(6,4)*a1_4 + get_D(6,5)*a1_5 + get_D(6,6)*a1_6);

%% A1k
A1_1 =  - (a3_1^2)/a1_1 + lambda/(a1_1^2) - R0*sin(b_1)/(m0 + md*(0.5*tau_f*(1+t(1)))) + 2*(get_D(1,1)*a2_1 + get_D(1,2)*a2_2 + get_D(1,3)*a2_3+ get_D(1,4)*a2_4 + get_D(1,5)*a2_5 + get_D(1,6)*a2_6);
A1_2 =  - (a3_2^2)/a1_2 + lambda/(a1_2^2) - R0*sin(b_2)/(m0 + md*(0.5*tau_f*(1+t(2)))) + 2*(get_D(2,1)*a2_1 + get_D(2,2)*a2_2 + get_D(2,3)*a2_3+ get_D(2,4)*a2_4 + get_D(2,5)*a2_5 + get_D(2,6)*a2_6);
A1_3 =  - (a3_3^2)/a1_3 + lambda/(a1_3^2) - R0*sin(b_3)/(m0 + md*(0.5*tau_f*(1+t(3)))) + 2*(get_D(3,1)*a2_1 + get_D(3,2)*a2_2 + get_D(3,3)*a2_3+ get_D(3,4)*a2_4 + get_D(3,5)*a2_5 + get_D(3,6)*a2_6);
A1_4 =  - (a3_4^2)/a1_4 + lambda/(a1_4^2) - R0*sin(b_4)/(m0 + md*(0.5*tau_f*(1+t(4)))) + 2*(get_D(4,1)*a2_1 + get_D(4,2)*a2_2 + get_D(4,3)*a2_3+ get_D(4,4)*a2_4 + get_D(4,5)*a2_5 + get_D(4,6)*a2_6);
A1_5 =  - (a3_5^2)/a1_5 + lambda/(a1_5^2) - R0*sin(b_5)/(m0 + md*(0.5*tau_f*(1+t(5)))) + 2*(get_D(5,1)*a2_1 + get_D(5,2)*a2_2 + get_D(5,3)*a2_3+ get_D(5,4)*a2_4 + get_D(5,5)*a2_5 + get_D(5,6)*a2_6);
A1_6 =  - (a3_6^2)/a1_6 + lambda/(a1_6^2) - R0*sin(b_6)/(m0 + md*(0.5*tau_f*(1+t(6)))) + 2*(get_D(6,1)*a2_1 + get_D(6,2)*a2_2 + get_D(6,3)*a2_3+ get_D(6,4)*a2_4 + get_D(6,5)*a2_5 + get_D(6,6)*a2_6);

%% A2k
A2_1 =    (a2_k*a3_1)/a1_1 - R0*sin(b_1)/(m0 + md*(0.5*tau_f*(1+t(1)))) + 2*(get_D(1,1)*a3_1 + get_D(1,2)*a3_2 + get_D(1,3)*a3_3+ get_D(1,4)*a3_4 + get_D(1,5)*a3_5 + get_D(1,6)*a3_6);
A2_2 =    (a2_k*a3_2)/a1_2 - R0*sin(b_2)/(m0 + md*(0.5*tau_f*(1+t(2)))) + 2*(get_D(2,1)*a3_1 + get_D(2,2)*a3_2 + get_D(2,3)*a3_3+ get_D(2,4)*a3_4 + get_D(2,5)*a3_5 + get_D(2,6)*a3_6);
A2_3 =    (a2_k*a3_3)/a1_3 - R0*sin(b_3)/(m0 + md*(0.5*tau_f*(1+t(3)))) + 2*(get_D(3,1)*a3_1 + get_D(3,2)*a3_2 + get_D(3,3)*a3_3+ get_D(3,4)*a3_4 + get_D(3,5)*a3_5 + get_D(3,6)*a3_6);
A2_4 =    (a2_k*a3_4)/a1_4 - R0*sin(b_4)/(m0 + md*(0.5*tau_f*(1+t(4)))) + 2*(get_D(4,1)*a3_1 + get_D(4,2)*a3_2 + get_D(4,3)*a3_3+ get_D(4,4)*a3_4 + get_D(4,5)*a3_5 + get_D(4,6)*a3_6);
A2_5 =    (a2_k*a3_5)/a1_5 - R0*sin(b_5)/(m0 + md*(0.5*tau_f*(1+t(5)))) + 2*(get_D(5,1)*a3_1 + get_D(5,2)*a3_2 + get_D(5,3)*a3_3+ get_D(5,4)*a3_4 + get_D(5,5)*a3_5 + get_D(5,6)*a3_6);
A2_6 =    (a2_k*a3_6)/a1_6 - R0*sin(b_6)/(m0 + md*(0.5*tau_f*(1+t(6)))) + 2*(get_D(6,1)*a3_1 + get_D(6,2)*a3_2 + get_D(6,3)*a3_3+ get_D(6,4)*a3_4 + get_D(6,5)*a3_5 + get_D(6,6)*a3_6);





    function D = get_D(m,l)  
        N = 5;
        lambda = 1;
        R0 = 0.1405;
        m0 = 1;
        md = 0.07487;
        D1 = (legendreP(5,t(m))/legendreP(5,t(l)))*(1/(t(m)-t(l)));
        D2 = -(N*(N+1))/4;
        D3 = (N*(N+1))/4;
        D4 = 0;
        
        D = [[D2 D1 D1 D1 D1 D1];
            [D1 D4 D1 D1 D1 D1];
            [D1 D1 D4 D1 D1 D1];
            [D1 D1 D1 D4 D1 D1];
            [D1 D1 D1 D1 D4 D1];
            [D1 D1 D1 D1 D1 D3]];
    end
end