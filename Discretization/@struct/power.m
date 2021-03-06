function r = power(p,q)
%RDIVIDE this function power (.^) the x, y, and z values of the structures that I use in
% the FVtool.
% 
% SYNOPSIS:
%   
% 
% PARAMETERS:
%   
% 
% RETURNS:
%   
% 
% EXAMPLE:
% 
% SEE ALSO:
%     

%{
Copyright (c) 2012, 2013, Ali Akbar Eftekhari
All rights reserved.

Redistribution and use in source and binary forms, with or 
without modification, are permitted provided that the following 
conditions are met:

    *   Redistributions of source code must retain the above copyright notice, 
        this list of conditions and the following disclaimer.
    *   Redistributions in binary form must reproduce the above 
        copyright notice, this list of conditions and the following 
        disclaimer in the documentation and/or other materials provided 
        with the distribution.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, 
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDER OR 
CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, 
EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, 
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, 
OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF 
LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING 
NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS 
SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
%}

if isstruct(p)==isstruct(q)
    m = size(p.xvalue);
    d = ndims(p.xvalue);
    if (min(m) == 1) % 1D: only x value
        r.xvalue = p.xvalue.^q.xvalue;
    elseif (d == 2) % 2D: x and y values
        r.xvalue = p.xvalue.^q.xvalue;
        r.yvalue = p.yvalue.^q.yvalue;
    else % 3D:x, y, and z values
        r.xvalue = p.xvalue.^q.xvalue;
        r.yvalue = p.yvalue.^q.yvalue;
        r.zvalue = p.zvalue.^q.zvalue;
    end
elseif isstruct(p)==1
    m = size(p.xvalue);
    d = ndims(p.xvalue);
    if (min(m) == 1) % 1D: only x value
        r.xvalue = p.xvalue.^q;
    elseif (d == 2) % 2D: x and y values
        r.xvalue = p.xvalue.^q;
        r.yvalue = p.yvalue.^q;
    else % 3D:x, y, and z values
        r.xvalue = p.xvalue.^q;
        r.yvalue = p.yvalue.^q;
        r.zvalue = p.zvalue.^q;
    end
elseif isstruct(q)==1
    m = size(q.xvalue);
    d = ndims(q.xvalue);
    if (min(m) == 1) % 1D: only x value
        r.xvalue = p.^q.xvalue;
    elseif (d == 2) % 2D: x and y values
        r.xvalue = p.^q.xvalue;
        r.yvalue = p.^q.yvalue;
    else % 3D:x, y, and z values
        r.xvalue = p.^q.xvalue;
        r.yvalue = p.^q.yvalue;
        r.zvalue = p.^q.zvalue;
    end
end