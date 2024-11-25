return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-telescope/telescope.nvim',
  },

  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup {}

    vim.keymap.set('n', '<leader>ha', function()
      harpoon:list():add()
    end, { desc = '[H]arpoon [A]dd' })
    vim.keymap.set('n', '<leader>h1', function()
      harpoon:list():select(1)
    end, { desc = '[H]arpoon [1] (1)' })
    vim.keymap.set('n', '<leader>h2', function()
      harpoon:list():select(2)
    end, { desc = '[H]arpoon [2] (2)' })
    vim.keymap.set('n', '<leader>h3', function()
      harpoon:list():select(3)
    end, { desc = '[H]arpoon [3] (3)' })
    vim.keymap.set('n', '<leader>h4', function()
      harpoon:list():select(4)
    end, { desc = '[H]arpoon [4] (4)' })
    vim.keymap.set('n', '<leader>h5', function()
      harpoon:list():select(5)
    end, { desc = '[H]arpoon [5] (5)' })
    vim.keymap.set('n', '<leader>h6', function()
      harpoon:list():select(6)
    end, { desc = '[H]arpoon [6] (6)' })
    vim.keymap.set('n', '<leader>h7', function()
      harpoon:list():select(7)
    end, { desc = '[H]arpoon [7] (7)' })
    vim.keymap.set('n', '<leader>h8', function()
      harpoon:list():select(8)
    end, { desc = '[H]arpoon [8] (8)' })
    vim.keymap.set('n', '<leader>h9', function()
      harpoon:list():select(9)
    end, { desc = '[H]arpoon [9] (9)' })

    vim.keymap.set('n', '<leader>he', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = '[H]arpoon [E]dit' })

    -- Toggle previous & next buffers stored within Harpoon list
    -- vim.keymap.set("n", "<C-P>", function() harpoon:list():prev() end)
    -- vim.keymap.set("n", "<C-N>", function() harpoon:list():next() end)

    -- Basic telescope configuration
    local conf = require('telescope.config').values
    local function toggle_telescope(harpoon_files)
      local file_paths = {}
      for _, item in ipairs(harpoon_files.items) do
        table.insert(file_paths, item.value)
      end

      require('telescope.pickers')
        .new({}, {
          prompt_title = 'Harpoon',
          finder = require('telescope.finders').new_table {
            results = file_paths,
          },
          previewer = conf.file_previewer {},
          sorter = conf.generic_sorter {},
        })
        :find()
    end

    vim.keymap.set('n', '<leader>sh', function()
      toggle_telescope(harpoon:list())
    end, { desc = '[S]earch [H]arpoon' })
  end,
}
