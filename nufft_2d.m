function F = nufft_2d(f, x, Msp, M, R)
	%{
	Computes the type 1 non-uniform FFT using
	fast Gaussian gridding on a non-uniform grid
	in physical space, resulting in a uniform grid
	in Fourier space.

	Parameters

	f : array, shape (N,2)
		Data at each location
	x : array, shape (N,2)
		Location [0,2*pi]^2
	Msp : int
		Spreading parameter
	M : int
		Number of Fourier grid points
	R : scalar
		Oversampling ratio

	Returns

	F : array, shape (M,2)
		Non-uniform Fourier transform on a uniform grid
	%}
	
	% initialization
	Mr = R*M;
	tau = pi*Msp/(M^2*R*(R-0.5));
	l = 0:Msp;
	k = -M/2:M/2;
	E3 = exp(-(pi*l/Mr)^2/tau);
	E4 = exp(tau*k.^2);
	% convolution for each x
	m = floor(Mr*x/(2*pi));
	xi = 2*pi*m/Mr;
	E1 = exp(-sum((x-xi).^2,2)/(4*tau));
	E2 = exp(pi*(x-xi)/(Mr*tau));
	% FFT and deconvolution
end

