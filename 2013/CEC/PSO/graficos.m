labels = {'lB'; 'vN'    ; 'gB'; 'vNR'};
col = [1,2,3,6];
numA = length(col);
exito= [
    50  50  33  50  50  50  50
    49  50  50  50  50  50  50
    22  49  23  47  46  49  48
    50  50  24  50  50  50  50
    50  50  40  45  49  49  49
    ];
[y2,j2] = sort(-(median(exito(:,col))+1e-5*prctile(exito(:,col),25)+1e-10*mean(exito(:,col))));
figure
boxplot(exito(:,col(j2)),0,'r+',1);
ylabel('success')
xlabel('')
set(gca,'XTick',1:numA)
set(gca,'XTickLabel',labels((j2)))
hold on
plot(1:numA,mean(exito(:,col(j2))), 'o')
axis([0 numA+1 0 max(max(exito))*1.1])

rank = [
        1.0000    2.0000    3.0000    4.0000
    2.0000    3.0000    4.0000    1.0000
    1.0000    2.0000    4.0000    3.0000
    3.0000    2.0000    1.0000    4.0000
    1.5000    1.5000    3.0000    4.0000
    ];
sel = [4     2     1     3];
R= mean(rank);
[y2,j2] = sort(median(rank)+1e-5*prctile(rank,25)+1e-10*mean(rank));
figure
boxplot(rank(:,j2),0,'r+',0);
xlabel('rank')
ylabel('')
set(gca,'YTick',1:numA)
set(gca,'YTickLabel',labels(sel(j2)))
hold on
plot(R(j2),1:numA, 'o')
labels(sel(j2));

