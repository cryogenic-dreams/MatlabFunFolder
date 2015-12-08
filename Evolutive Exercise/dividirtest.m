function result=dividirtest(vector)
result(1)=vector(1);
result(2)=vector(2);
f=3;
for i=4:2:30
    result(f)=vector(i);
    f=f+1;
end