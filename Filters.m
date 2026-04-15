img = im2gray (imread("C:\Users\irfan\OneDrive\Desktop\Lena.tif"));
mask = fspecial('laplacian');
S2 = imfilter(img, mask);
S1 = imfilter (img, mask');

figure
imshowpair (S1, S2, "montage")

%% edge( ) function of Matlab
edges = edge(img);
figure
imshowpair(img, edges, "montage")