array = [-1, 1];                    %initializam un array avand elemente nivelurile la care ajunge graficul
 numpulses=50;                      %numarul de "pulse-uri"
 Pcell = cell(1,numpulses);         %Pcell returneaza un vector celula de matrici goale
    dt = .002;                      %pasul lui t
    for i = 1:numpulses             %parcurgem fiecare puls
        T = 2   ; %duration         %Perioada
        W = 0.25; %pulse width      %latimea pulse-ului
        t = 0:dt:T;
       Pcell{i} = randsample(array,1)*(t<=W);       
                                    
                                    
    end                                                           
     pulse = [Pcell{:}];            
     t = (0:length(pulse)-1)*dt;    
     subplot(4,1,1)
     plot(t,pulse) ;
     ylim([-2 2])
     xlim([0 40])
     xlabel('Timp')
     ylabel('Amplitudine')
     title('Semnal dreptunghiular multinivel, aleator [-1 1]')
grid 

array = [-3, -1, 1, 3];								
numpulses=50;									
    Pcell = cell(1,numpulses);							
    dt = .002;									
    for i = 1:numpulses								
        T = 2   ; 															
        W = 0.25; 								
        t = 0:dt:T;								
       Pcell{i} = randsample(array,1)*(t<=W); 					 
										
										
    end										
     pulse = [Pcell{:}];							
     t = (0:length(pulse)-1)*dt;						
     subplot(4,1,2)
     plot(t,pulse) ;								
     ylim([-4 4])
     xlim([0 40])
     xlabel('Timp')
     ylabel('Amplitudine')
     title('Semnal dreptunghiular multinivel, aleator [-3 -1 1 3]')
grid     

 array = [-5, -3, -1, 1, 3, 5];
 numpulses=50;
 Pcell = cell(1,numpulses);
    dt = .002;
    for i = 1:numpulses
        T = 2   ; %duration
        W = 0.25; %pulse width
        t = 0:dt:T;
       Pcell{i} = randsample(array,1)*(t<=W); 
    end
     pulse = [Pcell{:}];
     t = (0:length(pulse)-1)*dt;
     subplot(4,1,3)
     plot(t,pulse) ;
     ylim([-6 6])
     xlim([0 40])
     xlabel('Timp')
     ylabel('Amplitudine')
     title('Semnal dreptunghiular multinivel, aleator [-5 -3 -1 1 3 5]')
grid     

 array = [-7 -5, -3, -1, 1, 3, 5 7];
 numpulses=50;
 Pcell = cell(1,numpulses);
    dt = .002;
    for i = 1:numpulses
        T = 2   ; %duration
        W = 0.25; %pulse width
        t = 0:dt:T;
       Pcell{i} = randsample(array,1)*(t<=W); 
    end
     pulse = [Pcell{:}];
     t = (0:length(pulse)-1)*dt;
     subplot(4,1,4)
     plot(t,pulse) ;
     ylim([-8 8])
     xlim([0 40])
     xlabel('Timp')
     ylabel('Amplitudine')
     title('Semnal dreptunghiular multinivel, aleator [-7 -5 -3 -1 1 3 5 7]')
grid 