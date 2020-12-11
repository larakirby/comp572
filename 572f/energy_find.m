function return_energy = energy_find(input_img)
    %considering brightness as main part of energy function
    grayscale_ver=rgb2gray(input_img);
    grayscale_ver = im2double(grayscale_ver);
    
    %imgradient(grayscale_ver)
    
    x_component = grayscale_ver(:,2:end)-grayscale_ver(: ,1:end-1);
    y_component = grayscale_ver(2:end,:)-grayscale_ver(1 :end-1,:);
    
    %will later use this energy function
   %  as part of the optimal seam
    %dynamic programming problem
    
    x_component = x_component(1:end-1, : );
    y_component = y_component(:, 1:end-1);
    
    %x_component^2
    return_energy= sqrt(x_component.^2  + y_component.^2);
    
    return_energy(end,end) = 0;