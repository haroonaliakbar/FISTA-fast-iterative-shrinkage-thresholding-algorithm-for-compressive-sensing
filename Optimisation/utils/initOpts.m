function opts = initOpts(opts)
    %% show, max_iter, checkgrad
    if ~isfield(opts, 'verbose')
        opts.verbose = 0;
    end 
    %%
    if ~isfield(opts, 'check_grad')
        opts.check_grad = 0;
    end 
    %%
    if ~isfield(opts, 'max_iter')
        opts.max_iter = 100;
    end 
    %%
    if ~isfield(opts, 'showD')
        opts.showD = false;
    end 
    %%
    if ~isfield(opts, 'showX')
        opts.showX = false;
    end 
    %%
    if ~isfield(opts, 'show_cost')
        opts.show_cost = 0;
    end 
    %%
    if ~isfield(opts, 'tol')
        opts.tol = 1e-8;
    end 
    %%
    
end