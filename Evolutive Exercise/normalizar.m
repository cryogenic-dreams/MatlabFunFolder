function vector2=normalizar(vector1)
[D,I]=max(vector1);
vector2=vector1./D(1);