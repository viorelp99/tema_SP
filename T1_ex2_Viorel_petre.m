T=5;          		                               	
t=0:0.002:3*T;                              %am inmultit t cu T pt a afisa mai multe perioade ale semnalului
x = -0.5+1.5*sawtooth(2*pi*0.2*t,0.6);		%am reglat variabila de reglaj 0.6 pt ca panta sa fie egala cu 1
							
subplot(3,1,1)		
plot(t,x);
xlabel('Timp [s]')
ylabel('Amplitudine')
title('Triangular Periodic Wave 2ms')
axis([0 10 -2.5 2])
grid

t=0:0.02:3*T;
x = -0.5+1.5*sawtooth(2*pi*0.2*t,0.6);
subplot(3,1,2)
plot(t,x);
xlabel('Timp [s]')
ylabel('Amplitudine')
title('Triangular Periodic Wave 20ms')
axis([0 10 -2.5 2])
grid

t=0:0.2:3*T;
x = -0.5+1.5*sawtooth(2*pi*0.2*t,0.6);
subplot(3,1,3)
plot(t,x);
xlabel('Timp [s]')
ylabel('Amplitudine')
title('Triangular Periodic Wave 200ms')
axis([0 10 -2.5 2])
grid