-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/svitax/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/svitax/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/svitax/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/svitax/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/svitax/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ale = {
    config = { "require('plugin.ale')" },
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/ale"
  },
  aniseed = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/aniseed"
  },
  ["auto-pairs"] = {
    config = { "require('plugin.auto-pairs')" },
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["clojure.vim"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/clojure.vim"
  },
  ["compe-conjure"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/compe-conjure"
  },
  conjure = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/conjure"
  },
  fzf = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/fzf"
  },
  ["fzf.vim"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/fzf.vim"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/lightline.vim"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/packer.nvim"
  },
  ["srcery-vim"] = {
    config = { "require('plugin.srcery')" },
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/srcery-vim"
  },
  undotree = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/undotree"
  },
  ["vim-abolish"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-abolish"
  },
  ["vim-argumentative"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-argumentative"
  },
  ["vim-better-default"] = {
    config = { "require('plugin.better-default')" },
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-better-default"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-dispatch-neovim"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-dispatch-neovim"
  },
  ["vim-easymotion"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-easymotion"
  },
  ["vim-eunuch"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-eunuch"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-jack-in"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-jack-in"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-repeat"
  },
  ["vim-sexp"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-sexp"
  },
  ["vim-sexp-mappings-for-regular-people"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-sexp-mappings-for-regular-people"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-surround"
  },
  ["vim-unimpaired"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-unimpaired"
  },
  ["vim-vinegar"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/vim-vinegar"
  },
  ["which-key.nvim"] = {
    loaded = true,
    path = "/Users/svitax/.local/share/nvim/site/pack/packer/start/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: ale
time([[Config for ale]], true)
require('plugin.ale')
time([[Config for ale]], false)
-- Config for: auto-pairs
time([[Config for auto-pairs]], true)
require('plugin.auto-pairs')
time([[Config for auto-pairs]], false)
-- Config for: srcery-vim
time([[Config for srcery-vim]], true)
require('plugin.srcery')
time([[Config for srcery-vim]], false)
-- Config for: vim-better-default
time([[Config for vim-better-default]], true)
require('plugin.better-default')
time([[Config for vim-better-default]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: ".v:exception | echom "Please check your config for correctness" | echohl None')
end
