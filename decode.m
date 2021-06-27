str = '';
  
for i = 1 : len
   for j = 1 : len_unique
       
       % If tag value falls between a certain 
       % range in lookup table then
       if tag > interval(j, 1) && tag < interval(j, 2)
           pos = j;
           tag = (tag - interval(pos, 1)) / p(j);
  
           % Geeting the matched tag 
           % value character
           decoded_str = u(pos);
  
           % String concatenating 
           % 'decoded_str' into 'str'
           str = strcat(str, decoded_str);
           break
       end
   end
end
  
% Displaying final decoded string
disp(str)
