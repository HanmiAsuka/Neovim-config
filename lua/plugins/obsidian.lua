return {
  -- 1. Obsidian.nvim 插件配置
  {
    "obsidian-nvim/obsidian.nvim",
    version = "*", -- 推荐使用最新稳定版本
    lazy = true,
    ft = "markdown", -- 仅在打开 markdown 生效
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {
      -- !!! 重要：请将此处修改为你实际的 Obsidian 仓库路径 !!!
      workspaces = {
        {
          name = "blog",
          path = "~/Code/Obsidian-blog",
        },
        -- 你可以添加多个工作区
        -- {
        --   name = "work",
        --   path = "~/Documents/Obsidian/WorkVault",
        -- },
      },
      -- 显式关闭 nvim_cmp 支持，防止报错
      completion = {
        nvim_cmp = false,
        min_chars = 2,
      },
      -- 快捷键映射
      mappings = {
        -- 这里你可以保留默认，或者自定义
        ["gf"] = {
          action = function()
            return require("obsidian").util.gf_passthrough()
          end,
          opts = { noremap = false, expr = true, buffer = true },
        },
        -- 切换复选框状态 [ ] -> [x]
        ["<leader>ch"] = {
          action = function()
            return require("obsidian").util.toggle_checkbox()
          end,
          opts = { buffer = true },
        },
        -- 在新标签页打开链接
        ["<cr>"] = {
          action = function()
            return require("obsidian").util.smart_action()
          end,
          opts = { buffer = true, expr = true },
        },
      },
      -- 界面设置
      ui = {
        enable = true, -- 启用 UI 增强 (如复选框高亮)
      },
    },
  },

  -- 2. img-clip 插件配置
  {
    "HakonHarnes/img-clip.nvim",
    event = "VeryLazy",
    opts = {
      -- 默认配置
      default = {
        embed_image_as_base64 = false,
        prompt_for_file_name = false, -- 粘贴时不询问文件名，自动生成
        drag_and_drop = {
          insert_mode = true, -- 允许在插入模式下拖拽图片
        },
        -- 针对 Obsidian 的特殊配置
        use_absolute_path = false,
        relative_to_current_file = true,
      },

      -- 专门针对 Markdown 文件的配置
      filetypes = {
        markdown = {
          url_encode_path = true,
          template = "![$CURSOR]($FILE_PATH)",
          -- 将图片保存到当前文件同级目录下的 assets 文件夹，或者你可以指定具体的附件文件夹
          dir_path = "assets",
          extension = "png",
        },
      },
    },
    -- 设置快捷键
    keys = {
      { "<leader>p", "<cmd>PasteImage<cr>", desc = "Paste Image from Clipboard" },
    },
  },
}
