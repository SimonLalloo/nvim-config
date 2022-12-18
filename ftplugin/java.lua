local config = {
    -- cmd = {'/path/to/jdt-language-server/bin/jdtls'},
    cmd = {'$HOME/Library/Java/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'.gradlew', '.git', 'mvnw'}, { upward = true })[1]),
}
require('jdtls').start_or_attach(config)
