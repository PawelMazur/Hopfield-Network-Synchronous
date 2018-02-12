
clc;
clear;
lines(0);

function [M] = unipolarna(W, ac)
    RozmiarKolumn = size(W, 'c');

if RozmiarKolumn == 3 then    
//dla macierzy SynchUni
X=[ 0 0 0;
    0 0 1;
    0 1 0;
    0 1 1;
    1 0 0;
    1 0 1;
    1 1 0;
    1 1 1];
end    
//dla macierzy Vjeden Vcztery i VL    
if RozmiarKolumn == 6 then
X=[0 0 0 0 0 0;
   0 0 0 0 0 1;
   0 0 0 0 1 0;
   0 0 0 0 1 1;
   0 0 0 1 0 0;
   0 0 0 1 0 1;
   0 0 0 1 1 0;
   0 0 0 1 1 1;
   0 0 1 0 0 0;
   0 0 1 0 0 1;
   0 0 1 0 1 0;
   0 0 1 0 1 1;
   0 0 1 1 0 0;
   0 0 1 1 0 1;
   0 0 1 1 1 0;
   0 0 1 1 1 1;
   0 1 0 0 0 0;
   0 1 0 0 0 1;
   0 1 0 0 1 0;
   0 1 0 0 1 1;
   0 1 0 1 0 0;
   0 1 0 1 0 1;
   0 1 0 1 1 0;
   0 1 0 1 1 1;
   0 1 1 0 0 0;
   0 1 1 0 0 1;
   0 1 1 0 1 0;
   0 1 1 0 1 1;
   0 1 1 1 0 0;
   0 1 1 1 0 1;
   0 1 1 1 1 0;
   0 1 1 1 1 1;
   1 0 0 0 0 0;
   1 0 0 0 0 1;
   1 0 0 0 1 0;
   1 0 0 0 1 1;
   1 0 0 1 0 0;
   1 0 0 1 0 1;
   1 0 0 1 1 0;
   1 0 0 1 1 1;
   1 0 1 0 0 0;
   1 0 1 0 0 1;
   1 0 1 0 1 0;
   1 0 1 0 1 1;
   1 0 1 1 0 0;
   1 0 1 1 0 1;
   1 0 1 1 1 0;
   1 0 1 1 1 1;
   1 1 0 0 0 0;
   1 1 0 0 0 1;
   1 1 0 0 1 0;
   1 1 0 0 1 1;
   1 1 0 1 0 0;
   1 1 0 1 0 1;
   1 1 0 1 1 0;
   1 1 0 1 1 1;
   1 1 1 0 0 0;
   1 1 1 0 0 1;
   1 1 1 0 1 0;
   1 1 1 0 1 1;
   1 1 1 1 0 0;
   1 1 1 1 0 1;
   1 1 1 1 1 0;
   1 1 1 1 1 1];
end
//dla Cj
if RozmiarKolumn == 9 then
X=[0 0 0 0 0 0 0 0 0;
   0 0 0 0 0 0 0 0 1;
   0 0 0 0 0 0 0 1 0;
   0 0 0 0 0 0 0 1 1;
   0 0 0 0 0 0 1 0 0;
   0 0 0 0 0 0 1 0 1;
   0 0 0 0 0 0 1 1 0;
   0 0 0 0 0 0 1 1 1;
   0 0 0 0 0 1 0 0 0;
   0 0 0 0 0 1 0 0 1;
   0 0 0 0 0 1 0 1 0;
   0 0 0 0 0 1 0 1 1;
   0 0 0 0 0 1 1 0 0;
   0 0 0 0 0 1 1 0 1;
   0 0 0 0 0 1 1 1 0;
   0 0 0 0 0 1 1 1 1;
   0 0 0 0 1 0 0 0 0;
   0 0 0 0 1 0 0 0 1;
   0 0 0 0 1 0 0 1 0;
   0 0 0 0 1 0 0 1 1;
   0 0 0 0 1 0 1 0 0;
   0 0 0 0 1 0 1 0 1;
   0 0 0 0 1 0 1 1 0;
   0 0 0 0 1 0 1 1 1;
   0 0 0 0 1 1 0 0 0;
   0 0 0 0 1 1 0 0 1;
   0 0 0 0 1 1 0 1 0;
   0 0 0 0 1 1 0 1 1;
   0 0 0 0 1 1 1 0 0;
   0 0 0 0 1 1 1 0 1;
   0 0 0 0 1 1 1 1 0;
   0 0 0 0 1 1 1 1 1;
   0 0 0 1 0 0 0 0 0;
   0 0 0 1 0 0 0 0 1;
   0 0 0 1 0 0 0 1 0;
   0 0 0 1 0 0 0 1 1;
   0 0 0 1 0 0 1 0 0;
   0 0 0 1 0 0 1 0 1;
   0 0 0 1 0 0 1 1 0;
   0 0 0 1 0 0 1 1 1;
   0 0 0 1 0 1 0 0 0;
   0 0 0 1 0 1 0 0 1;
   0 0 0 1 0 1 0 1 0;
   0 0 0 1 0 1 0 1 1;
   0 0 0 1 0 1 1 0 0;
   0 0 0 1 0 1 1 0 1;
   0 0 0 1 0 1 1 1 0;
   0 0 0 1 0 1 1 1 1;
   0 0 0 1 1 0 0 0 0;
   0 0 0 1 1 0 0 0 1;
   0 0 0 1 1 0 0 1 0;
   0 0 0 1 1 0 0 1 1;
   0 0 0 1 1 0 1 0 0;
   0 0 0 1 1 0 1 0 1;
   0 0 0 1 1 0 1 1 0;
   0 0 0 1 1 0 1 1 1;
   0 0 0 1 1 1 0 0 0;
   0 0 0 1 1 1 0 0 1;
   0 0 0 1 1 1 0 1 0;
   0 0 0 1 1 1 0 1 1;
   0 0 0 1 1 1 1 0 0;
   0 0 0 1 1 1 1 0 1;
   0 0 0 1 1 1 1 1 0;
   0 0 0 1 1 1 1 1 1;
   0 0 1 0 0 0 0 0 0;
   0 0 1 0 0 0 0 0 1;
   0 0 1 0 0 0 0 1 0;
   0 0 1 0 0 0 0 1 1;
   0 0 1 0 0 0 1 0 0;
   0 0 1 0 0 0 1 0 1;
   0 0 1 0 0 0 1 1 0;
   0 0 1 0 0 0 1 1 1;
   0 0 1 0 0 1 0 0 0;
   0 0 1 0 0 1 0 0 1;
   0 0 1 0 0 1 0 1 0;
   0 0 1 0 0 1 0 1 1;
   0 0 1 0 0 1 1 0 0;
   0 0 1 0 0 1 1 0 1;
   0 0 1 0 0 1 1 1 0;
   0 0 1 0 0 1 1 1 1;
   0 0 1 0 1 0 0 0 0;
   0 0 1 0 1 0 0 0 1;
   0 0 1 0 1 0 0 1 0;
   0 0 1 0 1 0 0 1 1;
   0 0 1 0 1 0 1 0 0;
   0 0 1 0 1 0 1 0 1;
   0 0 1 0 1 0 1 1 0;
   0 0 1 0 1 0 1 1 1;
   0 0 1 0 1 1 0 0 0;
   0 0 1 0 1 1 0 0 1;
   0 0 1 0 1 1 0 1 0;
   0 0 1 0 1 1 0 1 1;
   0 0 1 0 1 1 1 0 0;
   0 0 1 0 1 1 1 0 1;
   0 0 1 0 1 1 1 1 0;
   0 0 1 0 1 1 1 1 1;
   0 0 1 1 0 0 0 0 0;
   0 0 1 1 0 0 0 0 1;
   0 0 1 1 0 0 0 1 0;
   0 0 1 1 0 0 0 1 1;
   0 0 1 1 0 0 1 0 0;
   0 0 1 1 0 0 1 0 1;
   0 0 1 1 0 0 1 1 0;
   0 0 1 1 0 0 1 1 1;
   0 0 1 1 0 1 0 0 0;
   0 0 1 1 0 1 0 0 1;
   0 0 1 1 0 1 0 1 0;
   0 0 1 1 0 1 0 1 1;
   0 0 1 1 0 1 1 0 0;
   0 0 1 1 0 1 1 0 1;
   0 0 1 1 0 1 1 1 0;
   0 0 1 1 0 1 1 1 1;
   0 0 1 1 1 0 0 0 0;
   0 0 1 1 1 0 0 0 1;
   0 0 1 1 1 0 0 1 0;
   0 0 1 1 1 0 0 1 1;
   0 0 1 1 1 0 1 0 0;
   0 0 1 1 1 0 1 0 1;
   0 0 1 1 1 0 1 1 0;
   0 0 1 1 1 0 1 1 1;
   0 0 1 1 1 1 0 0 0;
   0 0 1 1 1 1 0 0 1;
   0 0 1 1 1 1 0 1 0;
   0 0 1 1 1 1 0 1 1;
   0 0 1 1 1 1 1 0 0;
   0 0 1 1 1 1 1 0 1;
   0 0 1 1 1 1 1 1 0;
   0 0 1 1 1 1 1 1 1;
   0 1 0 0 0 0 0 0 0;
   0 1 0 0 0 0 0 0 1;
   0 1 0 0 0 0 0 1 0;
   0 1 0 0 0 0 0 1 1;
   0 1 0 0 0 0 1 0 0;
   0 1 0 0 0 0 1 0 1;
   0 1 0 0 0 0 1 1 0;
   0 1 0 0 0 0 1 1 1;
   0 1 0 0 0 1 0 0 0;
   0 1 0 0 0 1 0 0 1;
   0 1 0 0 0 1 0 1 0;
   0 1 0 0 0 1 0 1 1;
   0 1 0 0 0 1 1 0 0;
   0 1 0 0 0 1 1 0 1;
   0 1 0 0 0 1 1 1 0;
   0 1 0 0 0 1 1 1 1;
   0 1 0 0 1 0 0 0 0;
   0 1 0 0 1 0 0 0 1;
   0 1 0 0 1 0 0 1 0;
   0 1 0 0 1 0 0 1 1;
   0 1 0 0 1 0 1 0 0;
   0 1 0 0 1 0 1 0 1;
   0 1 0 0 1 0 1 1 0;
   0 1 0 0 1 0 1 1 1;
   0 1 0 0 1 1 0 0 0;
   0 1 0 0 1 1 0 0 1;
   0 1 0 0 1 1 0 1 0;
   0 1 0 0 1 1 0 1 1;
   0 1 0 0 1 1 1 0 0;
   0 1 0 0 1 1 1 0 1;
   0 1 0 0 1 1 1 1 0;
   0 1 0 0 1 1 1 1 1;
   0 1 0 1 0 0 0 0 0;
   0 1 0 1 0 0 0 0 1;
   0 1 0 1 0 0 0 1 0;
   0 1 0 1 0 0 0 1 1;
   0 1 0 1 0 0 1 0 0;
   0 1 0 1 0 0 1 0 1;
   0 1 0 1 0 0 1 1 0;
   0 1 0 1 0 0 1 1 1;
   0 1 0 1 0 1 0 0 0;
   0 1 0 1 0 1 0 0 1;
   0 1 0 1 0 1 0 1 0;
   0 1 0 1 0 1 0 1 1;
   0 1 0 1 0 1 1 0 0;
   0 1 0 1 0 1 1 0 1;
   0 1 0 1 0 1 1 1 0;
   0 1 0 1 0 1 1 1 1;
   0 1 0 1 1 0 0 0 0;
   0 1 0 1 1 0 0 0 1;
   0 1 0 1 1 0 0 1 0;
   0 1 0 1 1 0 0 1 1;
   0 1 0 1 1 0 1 0 0;
   0 1 0 1 1 0 1 0 1;
   0 1 0 1 1 0 1 1 0;
   0 1 0 1 1 0 1 1 1;
   0 1 0 1 1 1 0 0 0;
   0 1 0 1 1 1 0 0 1;
   0 1 0 1 1 1 0 1 0;
   0 1 0 1 1 1 0 1 1;
   0 1 0 1 1 1 1 0 0;
   0 1 0 1 1 1 1 0 1;
   0 1 0 1 1 1 1 1 0;
   0 1 0 1 1 1 1 1 1; 
   0 1 1 0 0 0 0 0 0;
   0 1 1 0 0 0 0 0 1;
   0 1 1 0 0 0 0 1 0;
   0 1 1 0 0 0 0 1 1;
   0 1 1 0 0 0 1 0 0;
   0 1 1 0 0 0 1 0 1;
   0 1 1 0 0 0 1 1 0;
   0 1 1 0 0 0 1 1 1;
   0 1 1 0 0 1 0 0 0;
   0 1 1 0 0 1 0 0 1;
   0 1 1 0 0 1 0 1 0;
   0 1 1 0 0 1 0 1 1;
   0 1 1 0 0 1 1 0 0;
   0 1 1 0 0 1 1 0 1;
   0 1 1 0 0 1 1 1 0;
   0 1 1 0 0 1 1 1 1;
   0 1 1 0 1 0 0 0 0;
   0 1 1 0 1 0 0 0 1;
   0 1 1 0 1 0 0 1 0;
   0 1 1 0 1 0 0 1 1;
   0 1 1 0 1 0 1 0 0;
   0 1 1 0 1 0 1 0 1;
   0 1 1 0 1 0 1 1 0;
   0 1 1 0 1 0 1 1 1;
   0 1 1 0 1 1 0 0 0;
   0 1 1 0 1 1 0 0 1;
   0 1 1 0 1 1 0 1 0;
   0 1 1 0 1 1 0 1 1;
   0 1 1 0 1 1 1 0 0;
   0 1 1 0 1 1 1 0 1;
   0 1 1 0 1 1 1 1 0;
   0 1 1 0 1 1 1 1 1;
   0 1 1 1 0 0 0 0 0;
   0 1 1 1 0 0 0 0 1;
   0 1 1 1 0 0 0 1 0;
   0 1 1 1 0 0 0 1 1;
   0 1 1 1 0 0 1 0 0;
   0 1 1 1 0 0 1 0 1;
   0 1 1 1 0 0 1 1 0;
   0 1 1 1 0 0 1 1 1;
   0 1 1 1 0 1 0 0 0;
   0 1 1 1 0 1 0 0 1;
   0 1 1 1 0 1 0 1 0;
   0 1 1 1 0 1 0 1 1;
   0 1 1 1 0 1 1 0 0;
   0 1 1 1 0 1 1 0 1;
   0 1 1 1 0 1 1 1 0;
   0 1 1 1 0 1 1 1 1;
   0 1 1 1 1 0 0 0 0;
   0 1 1 1 1 0 0 0 1;
   0 1 1 1 1 0 0 1 0;
   0 1 1 1 1 0 0 1 1;
   0 1 1 1 1 0 1 0 0;
   0 1 1 1 1 0 1 0 1;
   0 1 1 1 1 0 1 1 0;
   0 1 1 1 1 0 1 1 1;
   0 1 1 1 1 1 0 0 0;
   0 1 1 1 1 1 0 0 1;
   0 1 1 1 1 1 0 1 0;
   0 1 1 1 1 1 0 1 1;
   0 1 1 1 1 1 1 0 0;
   0 1 1 1 1 1 1 0 1;
   0 1 1 1 1 1 1 1 0;
   0 1 1 1 1 1 1 1 1;  
   1 0 0 0 0 0 0 0 0;
   1 0 0 0 0 0 0 0 1;
   1 0 0 0 0 0 0 1 0;
   1 0 0 0 0 0 0 1 1;
   1 0 0 0 0 0 1 0 0;
   1 0 0 0 0 0 1 0 1;
   1 0 0 0 0 0 1 1 0;
   1 0 0 0 0 0 1 1 1;
   1 0 0 0 0 1 0 0 0;
   1 0 0 0 0 1 0 0 1;
   1 0 0 0 0 1 0 1 0;
   1 0 0 0 0 1 0 1 1;
   1 0 0 0 0 1 1 0 0;
   1 0 0 0 0 1 1 0 1;
   1 0 0 0 0 1 1 1 0;
   1 0 0 0 0 1 1 1 1;
   1 0 0 0 1 0 0 0 0;
   1 0 0 0 1 0 0 0 1;
   1 0 0 0 1 0 0 1 0;
   1 0 0 0 1 0 0 1 1;
   1 0 0 0 1 0 1 0 0;
   1 0 0 0 1 0 1 0 1;
   1 0 0 0 1 0 1 1 0;
   1 0 0 0 1 0 1 1 1;
   1 0 0 0 1 1 0 0 0;
   1 0 0 0 1 1 0 0 1;
   1 0 0 0 1 1 0 1 0;
   1 0 0 0 1 1 0 1 1;
   1 0 0 0 1 1 1 0 0;
   1 0 0 0 1 1 1 0 1;
   1 0 0 0 1 1 1 1 0;
   1 0 0 0 1 1 1 1 1;
   1 0 0 1 0 0 0 0 0;
   1 0 0 1 0 0 0 0 1;
   1 0 0 1 0 0 0 1 0;
   1 0 0 1 0 0 0 1 1;
   1 0 0 1 0 0 1 0 0;
   1 0 0 1 0 0 1 0 1;
   1 0 0 1 0 0 1 1 0;
   1 0 0 1 0 0 1 1 1;
   1 0 0 1 0 1 0 0 0;
   1 0 0 1 0 1 0 0 1;
   1 0 0 1 0 1 0 1 0;
   1 0 0 1 0 1 0 1 1;
   1 0 0 1 0 1 1 0 0;
   1 0 0 1 0 1 1 0 1;
   1 0 0 1 0 1 1 1 0;
   1 0 0 1 0 1 1 1 1;
   1 0 0 1 1 0 0 0 0;
   1 0 0 1 1 0 0 0 1;
   1 0 0 1 1 0 0 1 0;
   1 0 0 1 1 0 0 1 1;
   1 0 0 1 1 0 1 0 0;
   1 0 0 1 1 0 1 0 1;
   1 0 0 1 1 0 1 1 0;
   1 0 0 1 1 0 1 1 1;
   1 0 0 1 1 1 0 0 0;
   1 0 0 1 1 1 0 0 1;
   1 0 0 1 1 1 0 1 0;
   1 0 0 1 1 1 0 1 1;
   1 0 0 1 1 1 1 0 0;
   1 0 0 1 1 1 1 0 1;
   1 0 0 1 1 1 1 1 0;
   1 0 0 1 1 1 1 1 1;
   1 0 1 0 0 0 0 0 0;
   1 0 1 0 0 0 0 0 1;
   1 0 1 0 0 0 0 1 0;
   1 0 1 0 0 0 0 1 1;
   1 0 1 0 0 0 1 0 0;
   1 0 1 0 0 0 1 0 1;
   1 0 1 0 0 0 1 1 0;
   1 0 1 0 0 0 1 1 1;
   1 0 1 0 0 1 0 0 0;
   1 0 1 0 0 1 0 0 1;
   1 0 1 0 0 1 0 1 0;
   1 0 1 0 0 1 0 1 1;
   1 0 1 0 0 1 1 0 0;
   1 0 1 0 0 1 1 0 1;
   1 0 1 0 0 1 1 1 0;
   1 0 1 0 0 1 1 1 1;
   1 0 1 0 1 0 0 0 0;
   1 0 1 0 1 0 0 0 1;
   1 0 1 0 1 0 0 1 0;
   1 0 1 0 1 0 0 1 1;
   1 0 1 0 1 0 1 0 0;
   1 0 1 0 1 0 1 0 1;
   1 0 1 0 1 0 1 1 0;
   1 0 1 0 1 0 1 1 1;
   1 0 1 0 1 1 0 0 0;
   1 0 1 0 1 1 0 0 1;
   1 0 1 0 1 1 0 1 0;
   1 0 1 0 1 1 0 1 1;
   1 0 1 0 1 1 1 0 0;
   1 0 1 0 1 1 1 0 1;
   1 0 1 0 1 1 1 1 0;
   1 0 1 0 1 1 1 1 1;
   1 0 1 1 0 0 0 0 0;
   1 0 1 1 0 0 0 0 1;
   1 0 1 1 0 0 0 1 0;
   1 0 1 1 0 0 0 1 1;
   1 0 1 1 0 0 1 0 0;
   1 0 1 1 0 0 1 0 1;
   1 0 1 1 0 0 1 1 0;
   1 0 1 1 0 0 1 1 1;
   1 0 1 1 0 1 0 0 0;
   1 0 1 1 0 1 0 0 1;
   1 0 1 1 0 1 0 1 0;
   1 0 1 1 0 1 0 1 1;
   1 0 1 1 0 1 1 0 0;
   1 0 1 1 0 1 1 0 1;
   1 0 1 1 0 1 1 1 0;
   1 0 1 1 0 1 1 1 1;
   1 0 1 1 1 0 0 0 0;
   1 0 1 1 1 0 0 0 1;
   1 0 1 1 1 0 0 1 0;
   1 0 1 1 1 0 0 1 1;
   1 0 1 1 1 0 1 0 0;
   1 0 1 1 1 0 1 0 1;
   1 0 1 1 1 0 1 1 0;
   1 0 1 1 1 0 1 1 1;
   1 0 1 1 1 1 0 0 0;
   1 0 1 1 1 1 0 0 1;
   1 0 1 1 1 1 0 1 0;
   1 0 1 1 1 1 0 1 1;
   1 0 1 1 1 1 1 0 0;
   1 0 1 1 1 1 1 0 1;
   1 0 1 1 1 1 1 1 0;
   1 0 1 1 1 1 1 1 1;
   1 1 0 0 0 0 0 0 0;
   1 1 0 0 0 0 0 0 1;
   1 1 0 0 0 0 0 1 0;
   1 1 0 0 0 0 0 1 1;
   1 1 0 0 0 0 1 0 0;
   1 1 0 0 0 0 1 0 1;
   1 1 0 0 0 0 1 1 0;
   1 1 0 0 0 0 1 1 1;
   1 1 0 0 0 1 0 0 0;
   1 1 0 0 0 1 0 0 1;
   1 1 0 0 0 1 0 1 0;
   1 1 0 0 0 1 0 1 1;
   1 1 0 0 0 1 1 0 0;
   1 1 0 0 0 1 1 0 1;
   1 1 0 0 0 1 1 1 0;
   1 1 0 0 0 1 1 1 1;
   1 1 0 0 1 0 0 0 0;
   1 1 0 0 1 0 0 0 1;
   1 1 0 0 1 0 0 1 0;
   1 1 0 0 1 0 0 1 1;
   1 1 0 0 1 0 1 0 0;
   1 1 0 0 1 0 1 0 1;
   1 1 0 0 1 0 1 1 0;
   1 1 0 0 1 0 1 1 1;
   1 1 0 0 1 1 0 0 0;
   1 1 0 0 1 1 0 0 1;
   1 1 0 0 1 1 0 1 0;
   1 1 0 0 1 1 0 1 1;
   1 1 0 0 1 1 1 0 0;
   1 1 0 0 1 1 1 0 1;
   1 1 0 0 1 1 1 1 0;
   1 1 0 0 1 1 1 1 1;
   1 1 0 1 0 0 0 0 0;
   1 1 0 1 0 0 0 0 1;
   1 1 0 1 0 0 0 1 0;
   1 1 0 1 0 0 0 1 1;
   1 1 0 1 0 0 1 0 0;
   1 1 0 1 0 0 1 0 1;
   1 1 0 1 0 0 1 1 0;
   1 1 0 1 0 0 1 1 1;
   1 1 0 1 0 1 0 0 0;
   1 1 0 1 0 1 0 0 1;
   1 1 0 1 0 1 0 1 0;
   1 1 0 1 0 1 0 1 1;
   1 1 0 1 0 1 1 0 0;
   1 1 0 1 0 1 1 0 1;
   1 1 0 1 0 1 1 1 0;
   1 1 0 1 0 1 1 1 1;
   1 1 0 1 1 0 0 0 0;
   1 1 0 1 1 0 0 0 1;
   1 1 0 1 1 0 0 1 0;
   1 1 0 1 1 0 0 1 1;
   1 1 0 1 1 0 1 0 0;
   1 1 0 1 1 0 1 0 1;
   1 1 0 1 1 0 1 1 0;
   1 1 0 1 1 0 1 1 1;
   1 1 0 1 1 1 0 0 0;
   1 1 0 1 1 1 0 0 1;
   1 1 0 1 1 1 0 1 0;
   1 1 0 1 1 1 0 1 1;
   1 1 0 1 1 1 1 0 0;
   1 1 0 1 1 1 1 0 1;
   1 1 0 1 1 1 1 1 0;
   1 1 0 1 1 1 1 1 1; 
   1 1 1 0 0 0 0 0 0;
   1 1 1 0 0 0 0 0 1;
   1 1 1 0 0 0 0 1 0;
   1 1 1 0 0 0 0 1 1;
   1 1 1 0 0 0 1 0 0;
   1 1 1 0 0 0 1 0 1;
   1 1 1 0 0 0 1 1 0;
   1 1 1 0 0 0 1 1 1;
   1 1 1 0 0 1 0 0 0;
   1 1 1 0 0 1 0 0 1;
   1 1 1 0 0 1 0 1 0;
   1 1 1 0 0 1 0 1 1;
   1 1 1 0 0 1 1 0 0;
   1 1 1 0 0 1 1 0 1;
   1 1 1 0 0 1 1 1 0;
   1 1 1 0 0 1 1 1 1;
   1 1 1 0 1 0 0 0 0;
   1 1 1 0 1 0 0 0 1;
   1 1 1 0 1 0 0 1 0;
   1 1 1 0 1 0 0 1 1;
   1 1 1 0 1 0 1 0 0;
   1 1 1 0 1 0 1 0 1;
   1 1 1 0 1 0 1 1 0;
   1 1 1 0 1 0 1 1 1;
   1 1 1 0 1 1 0 0 0;
   1 1 1 0 1 1 0 0 1;
   1 1 1 0 1 1 0 1 0;
   1 1 1 0 1 1 0 1 1;
   1 1 1 0 1 1 1 0 0;
   1 1 1 0 1 1 1 0 1;
   1 1 1 0 1 1 1 1 0;
   1 1 1 0 1 1 1 1 1;
   1 1 1 1 0 0 0 0 0;
   1 1 1 1 0 0 0 0 1;
   1 1 1 1 0 0 0 1 0;
   1 1 1 1 0 0 0 1 1;
   1 1 1 1 0 0 1 0 0;
   1 1 1 1 0 0 1 0 1;
   1 1 1 1 0 0 1 1 0;
   1 1 1 1 0 0 1 1 1;
   1 1 1 1 0 1 0 0 0;
   1 1 1 1 0 1 0 0 1;
   1 1 1 1 0 1 0 1 0;
   1 1 1 1 0 1 0 1 1;
   1 1 1 1 0 1 1 0 0;
   1 1 1 1 0 1 1 0 1;
   1 1 1 1 0 1 1 1 0;
   1 1 1 1 0 1 1 1 1;
   1 1 1 1 1 0 0 0 0;
   1 1 1 1 1 0 0 0 1;
   1 1 1 1 1 0 0 1 0;
   1 1 1 1 1 0 0 1 1;
   1 1 1 1 1 0 1 0 0;
   1 1 1 1 1 0 1 0 1;
   1 1 1 1 1 0 1 1 0;
   1 1 1 1 1 0 1 1 1;
   1 1 1 1 1 1 0 0 0;
   1 1 1 1 1 1 0 0 1;
   1 1 1 1 1 1 0 1 0;
   1 1 1 1 1 1 0 1 1;
   1 1 1 1 1 1 1 0 0;
   1 1 1 1 1 1 1 0 1;
   1 1 1 1 1 1 1 1 0;
   1 1 1 1 1 1 1 1 1];

end
M = [];    

Y=0; // zmienna pomocnicza przechowująca odkryte punkty stałe sieci

Rozmiar = size(W,'r');
printf('Rozmiar wejscia: %d\n',Rozmiar);

N=2^Rozmiar; // liczba wszystkiech możliwych wektorów na wejściu
printf('Liczba wektorow wejsciowych: %d\n',N);

printf('Tryb działania sieci: synchroniczny.\n');

printf('BADANIE ZBIEŻNOŚCI\n\n');

for j=1:N
    
    
    printf('BADANIE WEKTORA NR %d @@@@@@@@@@@@@@@@@@@@@',j);
    disp(X(j,:));

    //inicjacja wartosci:
    Uk=zeros(Rozmiar,1);
    Vk=ones(Rozmiar,1);
    
    V=X(j,:)';//=[0 1 1]';
    k=1;

    //badanie zbieżności:
    Vk_1=V;

    printf('\nWektor V(0):');
    disp(Vk_1');
    //petla
    warunek_stop=%f; // warunek stopu nie jest spełniony

    while ~warunek_stop,
        printf('KROK\t%d\n',k);
        printf('Potencjał wejsciowy U(%d)',k);
        Uk=W*Vk_1;
        disp(Uk');

        printf('Potencjał wyjsciowy V(%d)',k);
        
        Vk= unipolar(Uk);
        //M = [M ; Vk' ];
        disp(Vk');
        k=k+1;
        if Vk_1 == Vk then
            warunek_stop=%t;
            printf('Zbieżny do:');
            disp(Vk');
            //M = [M ; Vk' ];
            if size(Y,'c')==1 then
                Y=Vk';
            else
                if isInMatrix(Y,Vk')==%f then
                    Y=[Y; Vk'];
                end
            end  
        else
            Vk_1=Vk;
        end
        if k==16 then
            printf('BRAK ZBIEZNOSCI!!!!!\n');
            break;
        end
    end

end
M = Y;
endfunction

function [M] = bipolarna(W, ac)
RozmiarKolumn = size(W, 'c');

if RozmiarKolumn == 3 then

X=[ -1 -1 -1;
    -1 -1 1;
    -1 1 -1;
    -1 1 1;
    1 -1 -1;
    1 -1 1;
    1 1 -1;
    1 1 1];
end

if RozmiarKolumn == 6 then
X=[-1 -1 -1 -1 -1 -1;
   -1 -1 -1 -1 -1  1;
   -1 -1 -1 -1  1 -1;
   -1 -1 -1 -1  1  1;
   -1 -1 -1  1 -1 -1;
   -1 -1 -1  1 -1  1;
   -1 -1 -1  1  1 -1;
   -1 -1 -1  1  1  1;
   -1 -1  1 -1 -1 -1;
   -1 -1  1 -1 -1  1;
   -1 -1  1 -1  1 -1;
   -1 -1  1 -1  1  1;
   -1 -1  1  1 -1 -1;
   -1 -1  1  1 -1  1;
   -1 -1  1  1  1 -1;
   -1 -1  1  1  1  1;
   -1  1 -1 -1 -1 -1;
   -1  1 -1 -1 -1  1;
   -1  1 -1 -1  1 -1;
   -1  1 -1 -1  1  1;
   -1  1 -1  1 -1 -1;
   -1  1 -1  1 -1  1;
   -1  1 -1  1  1 -1;
   -1  1 -1  1  1  1;
   -1  1  1 -1 -1 -1;
   -1  1  1 -1 -1  1;
   -1  1  1 -1  1 -1;
   -1  1  1 -1  1  1;
   -1  1  1  1 -1 -1;
   -1  1  1  1 -1  1;
   -1  1  1  1  1 -1;
   -1  1  1  1  1  1;
    1 -1 -1 -1 -1 -1;
    1 -1 -1 -1 -1  1;
    1 -1 -1 -1  1 -1;
    1 -1 -1 -1  1  1;
    1 -1 -1  1 -1 -1;
    1 -1 -1  1 -1  1;
    1 -1 -1  1  1 -1;
    1 -1 -1  1  1  1;
    1 -1  1 -1 -1 -1;
    1 -1  1 -1 -1  1;
    1 -1  1 -1  1 -1;
    1 -1  1 -1  1  1;
    1 -1  1  1 -1 -1;
    1 -1  1  1 -1  1;
    1 -1  1  1  1 -1;
    1 -1  1  1  1  1;
    1  1 -1 -1 -1 -1;
    1  1 -1 -1 -1  1;
    1  1 -1 -1  1 -1;
    1  1 -1 -1  1  1;
    1  1 -1  1 -1 -1;
    1  1 -1  1 -1  1;
    1  1 -1  1  1 -1;
    1  1 -1  1  1  1;
    1  1  1 -1 -1 -1;
    1  1  1 -1 -1  1;
    1  1  1 -1  1 -1;
    1  1  1 -1  1  1;
    1  1  1  1 -1 -1;
    1  1  1  1 -1  1;
    1  1  1  1  1 -1;
    1  1  1  1  1  1];
end
M = [];
 
Y=0; // zmienna pomocnicza przechowująca odkryte punkty stałe sieci

Rozmiar = size(W,'r');
printf('Rozmiar wejscia: %d\n',Rozmiar);

N=2^Rozmiar; // liczba wszystkiech możliwych wektorów na wejściu
printf('Liczba wektorow wejsciowych: %d\n',N);

printf('Tryb działania sieci: synchroniczny.\n');

printf('BADANIE ZBIEŻNOŚCI\n\n');

for j=1:N
    
   
    printf('BADANIE WEKTORA NR %d @@@@@@@@@@@@@@@@@@@@@',j);
    disp(X(j,:));

    //inicjacja wartosci:
    Uk=zeros(Rozmiar,1);
    Vk=ones(Rozmiar,1);
    
    V=X(j,:)';//=[0 1 1]';
    k=1;

    //badanie zbieżności:
    Vk_1=V;

    printf('\nWektor V(0):');
    disp(Vk_1');
    //petla
    warunek_stop=%f; // warunek stopu nie jest spełniony

    while ~warunek_stop,
        printf('KROK\t%d\n',k);
        printf('Potencjał wejsciowy U(%d)',k);
        Uk=W*Vk_1;
        disp(Uk');

        printf('Potencjał wyjsciowy V(%d)',k);
        
        Vk= bipolar(Uk);
        
        disp(Vk');
        k=k+1;
        if Vk_1 == Vk then
            warunek_stop=%t;
            printf('Zbieżny do:');
            disp(Vk');
            //M = [M ; Vk'];
            printf('Macierz M : ');
            disp(M);
            if size(Y,'c')==1 then
                Y=Vk';
            else
                if isInMatrix(Y,Vk')==%f then
                    Y=[Y; Vk'];
                end
            end  
        else
            Vk_1=Vk;
        end
        if k==16 then
            printf('BRAK ZBIEZNOSCI!!!!!\n');
            break;
        end
    end

end
M = Y;
endfunction

function [wy]=unipolar(a)
    [row col]=size(a);
    if row*col<>1 then
        wy=zeros(row,col);
        for i = 1:row
            for j = 1:col
                wy(i,j) = unipolar(a(i,j));
            end;
        end
    else
        if a > 0 then
            wy=1;
        else
            wy=0;
        end        
    end
endfunction

function wy_log=isInMatrix(Y,X) // funkcja pomocnicza, sprawdza czy wektor X znajduje się już w macierzy Y
    
    if size(Y,'c') <> size(X,'c') | size(X,'r') <> 1 then
        printf('Niepoprawne dane wejściowe: wymiar kolumn dla obu macierzy nie jest zgodny lub macierz druga nie jest wektorem wierszowym.');
    end
    
    wy_log=%f;
    for i=1:size(Y,'r')
        if Y(i,:) == X then
            wy_log=%t
        end
    end
endfunction

function [wy]=bipolar(a)
    [row col]=size(a);
    if row*col<>1 then
        wy=zeros(row,col);
        for i = 1:row
            for j = 1:col
                wy(i,j) = bipolar(a(i,j));
            end;
        end
    else
        if a > 0 then
            wy=1;
        else
            wy=-1;
        end        
    end
endfunction


function [Z] = RegulaHebba(X)
    RozmiarK = size(X, 'c');
    RozmiarW = size(X, 'r');
    W = zeros(RozmiarK, RozmiarK);
    row = size(W,'r');
    col = size(W, 'c');
   
    for i = 1: row
        for j = 1: col
            for k = 1: RozmiarW
                if i <> j then
                    W(i,j) = W(i,j) + (X(k,i) * X(k,j));
                else 
                    W(i,j) = 0;
                end
            end
        end    
    end 
    Z = W/RozmiarK;   
endfunction


function printC(Z)
    RozmiarK = size(Z , 'c');
    for i = 1 : RozmiarK
        if Z(1,i) == 1 then
            printf('#');
        else
            printf("*");
        end
        if modulo(i,3) == 0 then
            printf('\n');
        end  
    end
endfunction

function printMacierz(Z)
    RozmiarK = size(Z, 'c');
    RozmiarW = size(Z, 'r');
    for i = 1 : RozmiarW
        for j = 1: RozmiarK
            if Z(i,j) == 1 then
                printf('#');
            else
                printf("*");
            end
        end
        printf("\n");
    end
endfunction

function [W] = pseudoinwersja(X)
    w = det(X);
    if w <> 0 then
        [W] = X' * (X * X')^(-1) * X;
    end
endfunction

function czyLiniowoNiezalezne(X)
w = det(X);
printf("Czy Liniowo Niezalezna : %d \n ",w);
endfunction

function [Z] = czyRozpoznane(P,V)
//    printf('Macierz wektorow Rozpoznanych : \n ' );
//    disp(P);
//    printf('Macierz V : \n ' );
//    disp(V);
    Z = [];
    //L =  liczba wektorow do rozpoznania;
    L = size(V, 'r');
    for i = 1: L
        if isInMatrix(P, V(i,:)) then
            //printf("jest \n");
            //disp(V(i,:));
            Z = [Z; V(i,:)];
    else
        //printf("nie ma \n");
        end
    end
endfunction


function [Z] = synchronicznaSH(W, pattern, V, ac)
    r = size (W, 'c');
    if W == -1 then
        
        printf('Regula Hebba\n');
        //V1 = RegulaHebba(pattern);
        //printf("Pseudoinwersja\n")
        //czyLiniowoNiezalezne(pattern);
        [V1] = pseudoinwersja(pattern);
        disp(V1);
        if ac == 1 then 
            
            P = unipolarna(V1);
            printf('Macierz wektorów zbieżnych: \n');
            disp(P);
            printf('Macierz V : \n' );
            disp(V);
            Z = czyRozpoznane(P, V);
            printf("Wypisania Macierzy Z \n");
            disp(Z);
            printf("Wektor poczatkowy \n")
            //printC(pattern);//dla macierzy C4
            printMacierz(pattern);
            printf("Wektor koncowy \n");
            //porownane(P, V);
            //printC(Z);//dla macierzy C4
            printMacierz(Z);
            
            
        end
        if ac == -1 then
            P = bipolarna(V1);
            printf('Macierz wektorów zbieżnych: \n');
            disp(P);
            printf('Macierz V : \n' );
            disp(V);
            Z = czyRozpoznane(P, V);
            printf("Wypisania Macierzy Z \n");
            disp(Z);
            printC(Z);
            
        end
    else 
        if pattern == -1 then
            printf('Regula Heba \n');
            disp(W);
            if ac == 1 then 
                //P = unipolarna(W);
                P = unipolarna(W);
                printf('Macierz wektorów zbieżnych: \n');
                disp(P);
                printf('Macierz V : \n' );
                disp(V);
                Z = czyRozpoznane(P, V);
                //printf("Wypisania Macierzy Z \n");
                //disp(Z);
                //printC(Z);
                
          
                //printMacierz(Z);
                    
            end
        
            if ac == -1 then
                P = bipolarna(W);
                printf('Macierz wektorów zbieżnych: \n');
                disp(P);
                printf('Macierz V : \n' );
                disp(V);
                Z = czyRozpoznane(P, V);
                //printf("Wypisania Macierzy Z \n");
                //disp(Z);
                //printC(Z);
                //printMacierz(Z);
            end
        end
    end
    
endfunction
  
      
   
Wv = [-1 1  1;
      -1 1 -1;
       1 1 -1];
       
Wx = [0 1 1;
      0 1 0;
      1 1 0];

C1 = [0 1 0 1 1 0 0 1 0];

Cx1 = [0 1 1];
Cx2 = [0 1 0];
Cx3 = [1 1 0];

Ca = [1 1 1];
Cb = [0 1 0];
Cc = [1 1 1];

Cx4 = [0 0 1 0];
Cx5 = [0 1 1 0];
Cx6 = [0 0 1 0];
Cx7 = [0 0 1 0];

Cx = [Cx1;Cx2;Cx3];
Cxx = [Cx4;Cx5;Cx6];
Cabc = [Ca; Cb; Cc];

C2 = [-1 1 -1 1 1 -1];

Cv1 = [-1 1  1];
Cv2 = [-1 1 -1];
Cv3 = [ 1 1 -1];

Cv = [Cv1;Cv2;Cv3];

WSynchUni = [ 0 -1 -3;
             -1  0  2;
             -3  2  0];

WSynchBip = [0  1  2;
             1  0 -1;
             2  -1 0];
             

C4 = [1 0 1 0 1 0 1 0 1];
Vjeden = [1 0 0 1 0 0;
          0 0 1 1 0 0;
          0 1 0 1 0 0;
          0 0 0 1 0 0;
          0 0 0 1 0 1;
          0 0 0 1 1 0];
        
        
Vjeden1 = [0 0 0 1 0 0;
          0 0 1 1 0 0;
          0 1 0 1 0 0;
          1 0 0 1 0 0;
          0 0 0 1 0 0;
          0 0 0 1 0 0];
        
Vcztery = [0 0 0 1 0 0;
           0 0 1 1 0 0;
           0 1 0 1 0 0;
           1 1 1 1 0 0;
           0 0 0 1 1 0;
           1 1 0 1 0 1];
        
Vcztery1 = [0 0 0 1 0 0;
           0 0 1 1 0 0;
           0 1 0 1 0 0;
           1 1 1 1 0 0;
           0 0 0 1 0 0;
           0 0 0 1 0 0];
        
VL = [1 1 0 0 0 0;
      0 1 0 0 0 0;
      0 1 1 1 0 0;
      0 1 0 1 1 0;
      0 1 0 0 1 0;
      0 1 1 1 0 1];
        
VL1 = [0 1 0 0 0 0;
      0 1 0 0 0 0;
      0 1 0 0 0 0;
      0 1 0 0 0 0;
      0 1 0 0 0 0;
      0 1 1 1 0 0];

printf('PROGRAM NAPISANY NA ĆWICZENIA - ZAAWANSOWANE METODY SZTUCZNEJ INTELIGENCJI\n autorzy: Paweł Mazur, Piotr Mazur\n\n');
              
//Z = synchronicznaSH(Wx, -1, Cx, -1);                         


//dla Podpunktu b
//regula Hebba unipolarna
//Z = synchronicznaSH(-1, C4, C4, 1);
//dla pesudoinwersji unipolarna
Z = synchronicznaSH(-1, Vjeden, Vjeden1, 1);
//Z = asynchronicznaSH(-1, Vcztery, Vcztery1, 1);
//Z = asynchronicznaSH(-1, VL, VL1, 1);
//regula Hebba bipolarna
//Z = synchronicznaSH(-1, C2, C2, -1);
//dla pesudoinwersji bipolarna
//Z = synchronicznaSH(-1, Cv, Cv, -1);
//Z = synchronicznaSH2(-1, Vx1, Vx1, 1);
//dla Podpunktu a
//z wagami bipolarna
//Z = synchronicznaSH(WSynchUni, -1, Cx, 1);
//z wagami unipolarna
//Z = synchronicznaSH(WSynchUni, -1, Cv, 1);





