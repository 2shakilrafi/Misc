function torusknot(p1,q1)

format longg

maxsteps1 = 20000*(p1+q1+1);

y1 = nan(1,maxsteps1);
x1 = nan(1,maxsteps1);

x1(1,1) = 0;
y1(1,1) = 0;

for i=2:maxsteps1
    
    x1(i) = x1(i-1)+0.001;
    y1(i) = y1(i-1)+(q1/p1)*0.001;
    
    if x1(i) > 10
        x1(i-1) = NaN;
        x1(i) = -10;
    end
    
    if y1(i) > 10
        y1(i-1) = NaN;
        y1(i) = -10;
    end
end

plot(x1,y1)



% maxsteps2 = 10000*(p2+q2);
% 
% y2 = nan(1,maxsteps2);
% x2 = nan(1,maxsteps2);
% 
% x2(1,1) = 0;
% y2(1,1) = 0;

% for j=2:maxsteps2
%     
%     x2(j) = x2(j-1)+0.001;
%     y2(j) = y2(j-1)+(q1/p1)*0.001;
%     
%     if x2(j) > 10
%         x2(j-1) = NaN;
%         x2(j) = -10;
%     end
%     
%     if y2(j) > 10
%         y2(j-1) = NaN;
%         y2(j) = -10;
%     end
% end
% 
% plot(x2,y2);
% 
% hold off

end