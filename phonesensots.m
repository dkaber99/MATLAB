%Processs data from the accelerometer
   %Make sure .mat file is loaded
   
   %Convert timetable into an array
   A=table2array(Acceleration);
   %Calculate magitude of acceleration
   Amag = sqrt(A(:,1).^2+A(:,2).^2+A(:,3).^2)
   %Subtract gravity
   Amag=Amag-9.81
   % Plot mag-grav
   maximum = max(Amag)
    if(maximum < 120)
        %Play gong if Amag > 120
              load laughter.mat
        sound(y,.75*Fs)
        load 
    else
        load gong.mat
         sound(y,3*Fs)
        
    end         
        
   plot(Amag);