function output = mergeconfig(input, default)

% MERGECONFIG

% Copyright (C) 2009, Robert Oostenveld
%
% $Id$

% FIXME also deal with configuration objects
if ~isstruct(input)
  input = struct([]);
end

% FIXME also deal with configuration objects
if ~isstruct(default)
  default = struct([]);
end

fni = fieldnames(input);
fnd = fieldnames(default);
fnd = setdiff(fnd, fni);

for i=1:length(fnd)
  output.(fnd{i}) = default.(fnd{i});
end

for i=1:length(fni)
  output.(fni{i}) = input.(fni{i});
end


