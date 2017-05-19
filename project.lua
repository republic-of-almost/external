#!lua

--[[
  Render O Vision Project Description
]]--

table.insert(
  projects,
  {
    name     = "External",
    kind     = "StaticLib",
    language = "C++",
    location = make.get_proj_root(),

    src_files = {
      make.add_headers(make.get_proj_root()),
      make.add_src(make.get_proj_root()),
      make.add_doc(make.get_proj_root()),
    },

    inc_dirs = {
      make.get_proj_root() .. "./",
    },

    lib_dirs_macosx = {
      "/usr/local/lib/",
    },

    linkoptions_macosx = {
    },

    inc_dirs_macosx = {
      "/usr/local/include",
    },
  }
)
