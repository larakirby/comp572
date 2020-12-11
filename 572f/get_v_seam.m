function return_seam = get_v_seam(energy_of_img)
return_seam=zeros(size(energy_of_img,1),1);

[min_1 min_2]=min(energy_of_img(end,:));
return_seam(end)=min_2;

for i=size(energy_of_img,1)-1:-1:1
    [min_1 min_3]=min(energy_of_img(i,min_2-1:min_2+1));
    min_2 = min_2 + min_3-2;
    return_seam(i)= min_2;
end