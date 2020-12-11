im=imread('dogs.jpg');

img_copy=im;
e_img=energy_find(im);

%choose pixels amount for this loop depending on how much you want to
%shrink the image
for i=1:25
    [img_copy,e_img] = squeeze_height(img_copy,e_img);
%     these lines write snapshots of seams using the loop
%     plot([1:size (img_copy,2)]',seam,'g-','linewidth',1);  
%     x = getframe(gcf);
%     [p, map] = frame2im(x);
%     imwrite(p, ['p' num2str(i) '.jpg']);
end