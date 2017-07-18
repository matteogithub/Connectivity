function PLI=Phase_lag_index(a)
% a is a filtered multichannel signal (time x channels)
N=size(a,2);
PLI(1:N,1:N)=0;
complex_a=angle(hilbert(a));
for i=1:N
    for j=1:N
        if i<j
        PLI(i,j)=abs(mean(sign(complex_a(:,i)-complex_a(:,j))));
        PLI(j,i)=PLI(i,j);     
        end
    end
end
