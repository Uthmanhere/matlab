function basics_ena
   
%Task 1
    %vector
    Fs_v = [5 3 10 25 20]
    Gt_v = [1 0 -1 1 0 -19]
    %symbolic
    syms s t;
    Fs_s = 5*s^4 + 3*s^3 + 10*s^2 + 25*s + 20
    Gt_s = t^5 -t^3 + t^2 - 19
    
%Task 2
    %finding roots of both
    F_roots = roots(Fs_v)
    G_roots = roots(Gt_v)
    
%Task 3
    X_v = poly([2, 4, -5, -13])
    X_roots = roots(X_v)
    
    
%Task 5
    %finding residues
    [Hs_a, Hs_b] = residue([1 3 2], sym2poly(s*(s^3 - 6*s^2 + 5*s + 15)))
    
%Task 6
    syms w
    %laplace of three functions with inverses
    fa = laplace(t^3);
    pretty(fa)
    pretty(ilaplace(fa))
    fb = laplace(sin(w*t));
    pretty(fb)
    pretty(ilaplace(fb))
    fc = laplace(cos(w*t));
    pretty(fc)
    pretty(ilaplace(fc))
    
    %laplace of I(s) and I(x)
    Is = 2*((s^2 + 6*s + 16)/(s * (s^2 + 4*s + 8)));
    Is_inv = ilaplace(Is);
    pretty(Is)
    
    Ix_inv = ilaplace((Is + 0.5)*4*(s + 4));
    pretty(Ix_inv);
    
end
