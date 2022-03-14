
z=tf('z',1)
Glz = 1.46*z/(z-0.9849)
H=1/100;
Gc= 4.6154*(z-0.985)/(z-1)
Glcz=feedback(Gc*Glz,H);

% sisotool(Glz)
step(Glcz)

%%
z=tf('z')
s=tf('s')
Ts=6.425;
Gc1= 1.471/(s+0.01542);
Gc1z= c2d(Gc1,Ts)
sisotool(Gc1z)
H=1/100;
%%step(Gc1)

%%Gc=3*(z-0.8)/z;
%%jjj=feedback(Gc1z*Gc,H)
%%glc=feedback(Gc1,H)
%%step(glc)

%%step(jjj)
%%sisotool(Gc1z)