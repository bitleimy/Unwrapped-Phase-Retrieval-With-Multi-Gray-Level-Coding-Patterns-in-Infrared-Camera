%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Unwrapped-Phase-Retrieval-With-Multi-Gray-Level-Coding-Patterns-in-Infrared-Camera
% https://github.com/bitleimy/Unwrapped-Phase-Retrieval-With-Multi-Gray-Level-Coding-Patterns-in-Infrared-Camera
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% self-correction strategy
clc; clear;
close all;
for y = 1:height
     for x = 1:width
       if pha(y,x)<-2.8 && pha(y,x-1)>2.8
          K(y,x-3:x-1) = K(y,x-4);
          K(y,x:x+3) = K(y,x+4);
       end
     end
end