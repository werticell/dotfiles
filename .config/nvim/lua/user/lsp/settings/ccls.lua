return {
  setup = {
    cmd = { "ccls" },
    filetypes = { "c", "cpp", "objc", "objcpp" },
    root_dir = nvim_lsp.util.root_pattern("compile_commands.json", ".git"),
  }
}

