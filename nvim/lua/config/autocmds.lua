vim.api.nvim_create_autocmd({ "BufRead", "BufNewFile" }, {
  pattern = { "*.tf", "*.tfvars" },
  callback = function()
    vim.bo.filetype = "terraform"
  end,
})

vim.filetype.add({
  filename = {
    ["Jenkinsfile"] = "groovy",
  }
})
