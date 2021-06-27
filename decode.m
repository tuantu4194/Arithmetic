str = '';
  
for i = 1 : len
   for j = 1 : len_unique
       
       % If tag value falls between a certain 
       if tag > interval(j, 1) && tag < interval(j, 2)
           pos = j;
           tag = (tag - interval(pos, 1)) / p(j);
           decoded_str = u(pos);  
           str = strcat(str, decoded_str);
           break
       end
   end
end
  
% display result
disp(str)
