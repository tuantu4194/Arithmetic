% input string
str = 'GeeksforGeeks';
fprintf('The entered string is : %s\n', str);

% length of the string
len = length(str);
fprintf('The length of the string is : %d\n', len);

% get unique characters from the string
u = unique(str);
fprintf('The unique characters are : %s\n', u);

% length of the unique characters string
len_unique = length(u);
fprintf('The length of unique character string is : %d\n', len_unique);

% General lookup table

% create zeros of length of unique characters
z = zeros(1, len_unique);
p = zeros(1, len_unique);

for i = 1 : len_unique

% in 'z' variable we will find the occurrence of each characters from 'str'
z(i) = length(findstr(str, u(i)));

% in 'p' variable we will get probability of those occurrences
p(i) = z(i) / len;
end
display(z);
display(p);

% in 'cpr' variable we will get the cumulative summation of 'p' from '1' till last value of 'p'
cpr = cumsum(p);

% in 'newcpr' variable we are taking 'cpr' from '0' till last value of 'p'
newcpr = [0 cpr];

display(cpr);
display(newcpr);

% make table till 'len_unique' size
for i = 1 : len_unique

% in first column we are then
% placing 'newcpr' values
interval(i, 1) = newcpr(i);

% in second column we are
% placing 'cpr' values
interval(i, 2) = cpr(i);
end

% Displaying the lookup table
display('The lookip table is : ')
display(interval);

% Encoder Table

low = 0;
high = 1;
for i = 1 : len
for j = 1 : len_unique

	% if the value from 'str' match with u
	if str(i) == u(j);
		pos = j;
		j = j + 1;

		% displaying the matched length of unique characters
		display(pos);

		% getting the tag value
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
