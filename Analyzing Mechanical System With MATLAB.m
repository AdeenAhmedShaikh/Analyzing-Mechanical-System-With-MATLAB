%PROBLEM:

%1. Position Analysis.
%A slide-crank mechanism with the crank as the driver. The length of the crank is a = 0.040 m. The length of the coupler is b = 0.120 m. The offset length is c = 0.020 m. For θ2 = 60° find all values of the slider displacement d, and the angle θ3.

La= input('Length of link a in Meter = ');
Lb= input('Length of link b in Meter = ');
Lc= input('Length of Offset c in Meter = ');
T2= input('θ2 angle in degree = ');
T4= input('θ4 angle in degree = ');

T3= 180 - (asind(((La*sin(T2*(pi/180)))-Lc)/Lb));
disp(['We get θ3 angle in degree = ', num2str(T3)]);

Ld= (La*cos(T2*(pi/180)))-(Lb*cos(T3*(pi/180)));
disp(['We get slider displacement d in Meter = ', num2str(Ld)]);

% After solving,

%2. Velocity Analysis.
%Given the link lengths, the angles, θ2, θ3 the position of the slider d, and the input angular velocity ω2, computing the angular velocity of the coupler, ω3 and the linear velocity of the slider VLd ̇.

N=  input('RPM of link La = ');
W2= ((2*pi*N)/60);
disp(['Angular Velocity of La, ω2(rad/sec) = ', num2str(W2)]);

W3= (La*(-W2)*cos(T2*(pi/180)))/(Lb*cos(T3*(pi/180)));
disp(['Angular Velocity of Coupler, ω3(rad/sec) = ', num2str(W3)]);

VLd= (Lb*W3*sin(T3*(pi/180)))-(La*(-W2)*sin(T2*(pi/180)));
disp(['Liner Velocity of Slider, VLd(m/sec) = ', num2str(VLd)]);

% After solving,

%3. Acceleration Analysis.
%The angles, θ2, θ3, the position of the slider d, angular velocity ω2, ω3, linear velocity of the slider d ̇and the input angular acceleration ∝2 are given. computing the angular acceleration of the coupler ∝3  and linear acceleration of the slider d

A3= ((Lb*(W3^2)*sin(T3*(pi/180)))-(La*(W2^2)*sin(T2*(pi/180))))/(Lb*cos(T3*(pi/180)));
disp(['Angular Acceleration of Coupler, ∝3(rad/sec^2) = ', num2str(A3)]);

ALd= (Lb*A3*sin(T3*(pi/180)))+(Lb*(W3^2)*cos(T3*(pi/180)))-(La*(W2^2)*cos(T2*(pi/180)));
disp(['Liner Acceleration of Slider, ALd(m/sec^2) = ', num2str(ALd)]);

% After solving,






