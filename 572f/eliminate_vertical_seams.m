im=imread('seagull.jpg');

%north pole source: https://www.xyzanews.com/where-in-the-world-is-the-north-pole/
img_copy=im;
e_img = energy_find(im);
for i=1:50
    [img_copy,e_img] = squeeze_width(img_copy,e_img);
 
%     these lines save snapshot images of progressing seams
%     plot(seam,[1: size (img_copy,1 )]','g-','linewidth',1); 
%     x = getframe(gcf);
%     [p, map] = frame2im(x);
%     imwrite(p, ['p' num2str(i) '.jpg']);
end

imwrite(img_copy, 'final_seagull.jpg')