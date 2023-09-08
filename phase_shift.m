function [I, Is_img] = phase_shift(A, B, T, N, W, H)
    I = cell(N, 1);
    Is_img = zeros(N, H, W);
    xs = 1: W;
    f_2pi = 1. / double(T) * 2. * pi;
    for k = 0: N - 1
        I{k + 1} = A + B * cos(f_2pi * xs + 2 * k / N * pi);
        Is_img(k + 1, :, :) =  repmat(I{k + 1} / 255., H, 1);
    end
end
