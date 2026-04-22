return {
    {
        'habamax/vim-godot',
        init = function()
            --Godot exclusive
            local gdproject = io.open(vim.fn.getcwd()..'/project.godot', 'r')
            if gdproject then
                io.close(gdproject)
                vim.fn.serverstart '/tmp/godot.pipe'
                print("listening on godot pipe!")
            end
        end
    }
}
