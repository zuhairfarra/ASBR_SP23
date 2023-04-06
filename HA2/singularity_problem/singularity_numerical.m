function singularity = singularity_numerical(J)

if isequal(rank(J),6) && ~isequal(det(J*J'),0)
    singularity = 0;
else 
    singularity = 1;
end 

end

