

opts = {}

opts.setup = function()
  config.opts = vim.tbl_extend('force', global_settings_opts, user_opts or {})
end
return opts
