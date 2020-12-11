function [im1,im2] = squeeze_width(im,E)

vert_energy=zeros(size(E));
vert_energy(:,1)=E(:,1);
    vert_energy(1,2:end)=inf;
    vert_energy(end,2:end)=inf;
    for i=2:size(vert_energy,2)
        for j=2:size(vert_energy,1)-1
            vert_energy(j,i)=E(j,i)+min(vert_energy(j-1:j+1,i-1));
        end
    end
    
seam_v = get_v_seam(horiz_energy);

    
for i=1:length(seam_v)
    im(i,seam_v(i):end-1,:) = im(i,seam_v(i)+1:end,:);
end

im1=im(:,1:end-1,:);
im2=energy_find(im1);