function detMatrix=detY(M)

[row,column]=size(M); 
if row ~= column
 disp('Enter Square Matrix')
 return
end
 if column==1 %% If matrix dimension is 1*1 determinant is first value.
  detMatrix=M(1,1);   
 else
  if column==2 %% If matrix dimension is 2*2 determinant formula is a*d-b*c
   detMatrix=M(1,1)*M(2,2)-M(1,2)*M(2,1);   
  else     %% If matrix dimension is 3*3 or more determinant formula is -1^(j+k)*Minor(r,c)
   for j=1:column
    if j==1
     detMatrix=M(1,1)*detY(M(2:row,2:column));   
    elseif (j>1 && j<column)
     detMatrix=detMatrix+M(1,j)*(-1)^(j+1)*detY(M(2:row,[1:j-1,j+1:column]));
    else
     detMatrix=detMatrix+M(1,column)*(-1)^(column+1)*detY(M(2:row,1:column-1));
    end
   end
  end
 end
