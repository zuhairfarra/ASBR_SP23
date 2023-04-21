function ellipsoid_volume = J_ellipsoid_volume(eigen_values)

sqrt_eig_vals = sqrt(eigen_values);
ellipsoid_volume = 1; 
for i = 1:length(sqrt_eig_vals)
    ellipsoid_volume = ellipsoid_volume*sqrt_eig_vals(i);
end 

end 