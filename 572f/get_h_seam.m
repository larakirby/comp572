function return_seam = get_h_seam(energy_of_img)
return_seam=zeros(size(energy_of_img,2),1);

[min_1 min_2]=min(energy_of_img(:,end));
return_seam(end)=min_1;


for i=size(energy_of_img,2)-1:-1:1
    [min_1 min_3]=min(energy_of_img(min_2-1:min_2+1,i));
    min_2 = min_2 + min_3-2;
    return_seam(i)=min_2;
end