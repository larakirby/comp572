function [im1,im2] = squeeze_height(im,E)

horiz_energy=zeros(size(E));
horiz_energy(1,:)=E(1,:);
    horiz_energy(2:end,1)=inf;
    horiz_energy(2:end,end)=inf;
    for i=2:size(horiz_energy,1)
        for j=2:size(M,2)-1
            horiz_energy(i,j)=E(i,j)+min(horiz_energy(i-1,j-1:j+1));
        end
    end


seam_h = get_h_seam(horiz_energy);

for i=1:length(seam_h)
    im(seam_h(i):end-1,i,:)=im(seam_h(i)+1:end,i,:);
end

im1=im(1:end-1,:,:);
im2=energy_find(im1);