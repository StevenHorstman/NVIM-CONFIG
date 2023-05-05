require('nvim-tree').setup({
  sort_by = 'case_sensitive',
  view = {
    mappings = {
      list = {
      },
    },
  },
  renderer = {
      highlight_git = true,
            icons = {
          webdev_colors = true,
          git_placement = "before",
          padding = " ",
          symlink_arrow = " ➛ ",
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
          glyphs = {
            default = "",
            symlink = "",
            bookmark = "",
            folder = {
              arrow_closed = "",
              arrow_open = "",
			  --default = "",
			  default = "",
              open = "",
              empty = "",
              empty_open = "",
              symlink = "",
              symlink_open = "",
            },
            git = {
              unstaged = "m",
              staged = "a",
              unmerged = "",
              renamed = "➜",
              untracked = "u",
              deleted = "",
              ignored = "",
            },
          },
        },
  },
   git = {
        enable = true,
        ignore = false,
        show_on_dirs = true,
        show_on_open_dirs = true,
        timeout = 400,
      },
            diagnostics = {
        enable = true,
        show_on_dirs = true,
        show_on_open_dirs = true,
        debounce_delay = 50,
        severity = {
          min = vim.diagnostic.severity.HINT,
          max = vim.diagnostic.severity.ERROR,
        },
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
  actions = {
    open_file = {
      quit_on_open = true,
    }
  },
  tab = {
    sync = {
      open = true
    }
  },
  log = {
    types = {
      config = true
    }

  }
})
