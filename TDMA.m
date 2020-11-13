clc;
close all;
clear all;
x=0:.16:4*pi;                             
sig1=8*sin(2*x);                           
sig2=8*sin(x);
sig3=8*sin(0.5*x);
subplot(3,3,1);                          
plot(sig1);
title('Signal 1');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(3,3,2);
plot(sig2,'r');
title( 'Signal 2');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(3,3,3);
plot(sig3,'g');
title( 'Signal 3');
ylabel('Amplitude--->');
xlabel('Time--->');
figure
subplot(4,1,1);
stem(sig1);
title('Sampled Signal 1');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(4,1,2);
stem(sig2,'r');
title('Sampled Signal 2');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(4,1,3);
stem(sig3,'g');
title('Sampled Signal 3');
ylabel('Amplitude--->');
xlabel('Time--->');
l1=length(sig1);
l2=length(sig2);
l3=length(sig3);
 for i=1:l1
  sig(1,i)=sig1(i);                        
  sig(2,i)=sig2(i);
  sig(3,i)=sig3(i);
 end  
tdmsig=reshape(sig,1,[]);               

subplot(4,1,4);
stem(tdmsig, 'p');
title('TDM Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
 demux=reshape(tdmsig,3,[]);
 for i=1:l1
  sig4(i)=demux(1,i);                
  sig5(i)=demux(2,i);
  sig6(i)=demux(3,i);
 end  
 
 figure
 subplot(3,1,1)
 plot(sig4);
 title('Recovered Signal 1');
 ylabel('Amplitude--->');
 xlabel('Time--->');
 subplot(3,1,2)
 plot(sig5);
 title('Recovered Signal 2');
 ylabel('Amplitude--->');
 xlabel('Time--->');
 subplot(3,1,3)
 plot(sig6);
 title('Recovered Signal 3');
 ylabel('Amplitude--->');
 xlabel('Time--->');