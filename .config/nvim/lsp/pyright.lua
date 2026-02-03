return {
  cmd = { 'pyright-langserver', '--stdio' },
  filetypes = { 'python' },
  root_markers = { 'pyproject.toml', 'setup.py', 'setup.cfg', 'requirements.txt', 'Pipfile', 'pyrightconfig.json', '.git' },
  settings = {
    pyright = {
      disableOrganizeImports = false,
    },
    python = {
      analysis = {
        useLibraryCodeForTypes = true,
        autoSearchPaths = true,
        diagnosticMode = 'workspace',
        autoImportCompletions = true,
      },
    },
  },
}
