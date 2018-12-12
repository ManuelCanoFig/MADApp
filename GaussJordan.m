function gj=GaussJordan(a)

[f c]=size(a)

for k=1:c-1
  a(k,:)=a(k,:)/a(k,k);
    for j=k+1:f
    a(j,:)=a(j,:)-a(k,:)*a(j,k);
    j=j+1;
  
    end
  k=k+1;


end 
for k=f:-1:2
  for j=k-1:-1:1
    a(j,:)=a(j,:)-a(k,:)*a(j,k);
    j=j-1;
 
  end
  k=k-1;
  a

 gj=a
end
