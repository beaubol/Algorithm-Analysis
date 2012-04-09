%0/1 Knapsack problem using Dynamic programming
n=5;
W=11;
clc;

w=[1    2   5   6   7];
v=[1    6   18  22  28];
j=1;
for i=1:n
    V(i,j)=0;
end


for i=1:n
    for j=2:W+1

        if(w(i)==j||i-1==0)
            if(w(i)==j&&i-1==0)
               V(i,j)=v(i);
            elseif(w(i)==j&&i-1~=0)
                V(i,j)=V(i-1,j);
            else
                V(i,j)=v(i);
            end
            
        else
            if(w(i)<j)
V(i,j)=max(v(i)+V(i-1,j-w(i)),V(i-1,j));
            else
            V(i,j)=V(i-1,j);
            
            end
            
        end
    end
end
disp(V(1:n,1:W+1));
disp(V(n,W+1));

        