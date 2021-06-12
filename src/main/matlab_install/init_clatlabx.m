% init_clatlabx.m
%
% This is a utility function simplifying CLATLABx initialisation.
%
% In order to make this script run, you need to install CLATLABx and
% run it from matlab. Tested with Matlab 2020b
%         https://clij.github.io/clatlabx/
% 
% Author: Robert Haase, rhaase@mpi-cbg.de
%         November 2020
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function clatlabx_ = init_clatlabx()
    if (exist('net.haesleinhuepf.clatlab.CLATLABx') ~= 8)
		jar_location = strrep(mfilename('fullpath'), 'init_clatlabx', 'clatlabx-0.31.0.6-jar-with-dependencies.jar');
        javaaddpath(jar_location);
    end
    clatlabx_ = net.haesleinhuepf.clatlab.CLATLABx.getInstance();
end
