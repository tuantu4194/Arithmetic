is : ')
display(interval);
  
% Encoder Table
  
low = 0;
high = 1;
for i = 1 : len
   for j = 1 : len_unique
  
       % if the value from 'str'
       % matches with 'u' then
       if str(i) == u(j);
           pos = j;
           j = j + 1;  
  
           % displaying the matched length 
           % of unique characters
           display(pos);
  
           % getting the tag value 
           % of the matched character
           range = high - low;
           high = low + (range .* interval(pos, 2));
           low = low + (range .* interval(pos, 1));
           i = i + 1;
           break
       end
   end
end
  
% displaying tag value
tag = low;
display(tag);
