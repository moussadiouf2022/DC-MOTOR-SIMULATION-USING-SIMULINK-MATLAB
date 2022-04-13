%%%% DC MOTOR SIMULATION USING SIMULINK MATLAB
clc;close all;clear all; % windows & workspace reset 
%% Caracteristic
Amplitude = 240; % ARMATURE VOLTAGE INPUT 240 V
amplitude = 150; % FIELD WINDING INPUT 150 V
%% simulation
tsim = 0.3; % simulation time
[t,x,y] = sim('DC_MOTOR',tsim); % simulation 
V_in = y(:,1); % ARMATURE VOLTAGE (V)
w = y(:,2);    % Speed wm (rad/s)
iA = y(:,3);   % Armature current ia (A)
iF = y(:,4);   % Field current if (A)
Te = y(:,5);   % Electrical torque Te (N.m)
%% Visualization
figure
    subplot (2,2,1)
    plot(t,V_in,'k','linewidth',2),xlabel('temps (s)'),ylabel('Voltage (V)'),grid on,hold on;
    legend('ARMATURE VOLTAGE')
    
    subplot (2,2,2)
    plot(t,w,'r','linewidth',2),xlabel('temps (s)'),ylabel('Speed wm (rad/s)'),grid on,hold on;
    legend('Speed wm (rad/s)')
    
    subplot (2,2,3)
    plot(t,iA,'g','linewidth',2),xlabel('temps (s)'),ylabel('Armature current ia (A)'),grid on,hold on;
    plot(t,iF,'m','linewidth',2),xlabel('temps (s)'),ylabel('Field current if (A)'),grid on,hold on;
    legend('current ia (A)','current if (A)')
    
    subplot (2,2,4)
    plot(t,Te,'b','linewidth',2),xlabel('temps (s)'),ylabel('Electrical torque Te (N.m)'),grid on,hold on;
    legend('Electrical torque Te (N.m)')