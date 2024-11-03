local ts_utils = require'nvim-treesitter.ts_utils'
local ts_parsers = require'nvim-treesitter.parsers'
local api = vim.api
local function substitute(sub_table, current_text, node, bufnr)
  for key, value in pairs(sub_table) do
    if trim(current_text) == value['symbol'] then
      local start_row, start_col, _, _ = vim.treesitter.get_node_range(node)
      vim.api.nvim_win_set_cursor(0, {start_row + 1, start_col})
      -- Trigger the LSP rename
      vim.lsp.buf.rename(value['newname'])
      end
  end
end

local function substitute_symbols(args)
  local filepath = args.args
  Log("filepath: "..filepath)
  local subsitution_table = read_json(filepath)
  -- Get the language parser for the current buffer
  local bufnr = api.nvim_get_current_buf()
  local lang = ts_parsers.get_buf_lang(bufnr)
  local parser = ts_parsers.get_parser(bufnr, lang)

  if parser then
    -- Use the Tree-sitter query to capture all symbols
    local query = vim.treesitter.query.parse(lang, "(identifier) @symbol")

    -- Parse the syntax tree to extract symbols
    for _, node, _ in query:iter_captures(parser:parse()[1]:root(), bufnr, 0, -1) do
      local symbol_name = ts_utils.get_node_text(node, bufnr)[1]
      substitute(subsitution_table, symbol_name, node, bufnr)
    end
  end
end

vim.api.nvim_del_user_command('SubstituteSymbols')
-- Define a command that takes a filename argument
vim.api.nvim_create_user_command('SubstituteSymbols', substitute_symbols, {
  nargs = 1,
  complete = "file",
  desc = "Substitute Symbols",
})
