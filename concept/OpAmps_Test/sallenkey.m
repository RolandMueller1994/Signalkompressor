syms w
syms R1
syms R2
syms C1
syms C2 
syms alpha
syms a1
syms b1
syms wg

j = i
eqn = R1*R2*C1*C2*(j*wg)^2+((R1+R2)*C1+(1-alpha)*R1*C2)*j*wg+1 == 1+a1*(j*wg/wg)+b1*(j*wg/wg)^2;

sol = solve(eqn);
pretty(sol);
solR1 = solve(eqn, R1);
pretty(solR1)
solR2 = solve(eqn, R2);
pretty(solR2)
solC1 = solve(eqn, C1);
pretty(solC1)
solC2 = solve(eqn, C2);
pretty(solC2)

C2dvideC1 = solC2/solC1;
pretty(C2dvideC1)

solC2dvideC1 = solve(C2dvideC1);
pretty(solC2dvideC1)



syms R2 

R1 = 10000;
C1 = 10e-9;
a1 = 1.362;
b1 = 0.618;
wg = 10000*2*pi;
w = wg;
alpha = 1;

j = i
eqn = R1*R2*C1*C2*(j*w)^2+((R1+R2)*C1+(1-alpha)*R1*C2)*j*w+1 == 1+a1*(j*w/wg)+b1*(j*w/wg)^2;

solC2 = solve(eqn, C2);
pretty(solC2)

solR2 = solve(eqn, R2);
pretty(solR2)