function CO=my_cohere(a)
% a is a filtered multichannel signal (time x channels)
N=size(a,2);
CO(1:N,1:N)=0;
for i=1:N
    for j=1:N
        if i<j
        CO(i,j)=mean(mscohere(a(:,i),a(:,j)));    
        CO(j,i)=CO(i,j);     
        end
    end
end
