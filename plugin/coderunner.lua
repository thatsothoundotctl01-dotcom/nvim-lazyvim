return {
  "CRAG666/code_runner.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("code_runner").setup({
      mode = "term",
      focus = true,
      startinsert = true,
      term = {
        position = "bot",
        size = 15,
      },
      filetype = {
        python = "python3 -u $fileName",
        javascript = "node $fileName",
        typescript = "ts-node $fileName",
        lua = "lua $fileName",
        sh = "bash $fileName",
        bash = "bash $fileName",

        c = "cd $dir && gcc $fileName -o /tmp/$fileNameWithoutExt && /tmp/$fileNameWithoutExt",
        cpp = "cd $dir && g++ -std=c++17 $fileName -o /tmp/$fileNameWithoutExt && /tmp/$fileNameWithoutExt",

        rust = "cd $dir && cargo run",
        go = "go run $fileName",

        java = "cd $dir && javac $fileName && java $fileNameWithoutExt",

        php = "php $fileName",
        ruby = "ruby $fileName",

        html = "xdg-open $fileName",

        json = "cat $fileName | jq .",
      },
    })
  end,
  keys = {
    {
      "<F6>",
      function()
        vim.cmd("silent! write")
        vim.cmd("RunCode")
      end,
      desc = "Save & Run Code (F6)",
    },
    {
      "<leader>rr",
      function()
        vim.cmd("silent! write")
        vim.cmd("RunCode")
      end,
      desc = "Save & Run Code",
    },
    {
      "<leader>rf",
      "<cmd>RunFile<cr>",
      desc = "Run File",
    },
    {
      "<leader>rc",
      "<cmd>RunClose<cr>",
      desc = "Close Runner",
    },
  },
}
