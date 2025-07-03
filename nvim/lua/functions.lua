local telescope = require("telescope.builtin")

-- TODO: add mode
function vim.map_if_not_mapped(keys, action, opts)
  local already_mapped = vim.fn.empty(vim.fn.maparg(keys)) == 0

  if not already_mapped then
    vim.keymap.set("n", keys, action, opts or {})
  end
end

function vim.git_or_find_files()
  local function is_git_repo()
    vim.fn.system("git rev-parse --is-inside-work-tree")
    return vim.v.shell_error == 0
  end

  if is_git_repo() then
    telescope.git_files()
  else
    telescope.find_files()
  end
end

function vim.terminal_run(cmd)
  vim.cmd.write()
  -- vim.cmd.split("term://" .. cmd)
  vim.cmd.tabe("term://" .. cmd)
  vim.cmd.normal("G")
  vim.keymap.set("n", "<cr>", "quit", { buffer = true })
end

function vim.run_with()
  local re_str = "^.*\\<run_with\\s\\+"
  local re = vim.regex(re_str)
  local current_line = vim.fn.getline(".")

  if not re:match_str(current_line) then
    print("no match")
    return
  end

  local input = vim.fn.substitute(current_line, re_str, "", "")
  local parts = vim.fn.split(input)
  local mapping = parts[1]

  local buffer = false

  if mapping == "<buffer>" then
    input = vim.fn.substitute(input, mapping, "", "")
    buffer = true
    mapping = parts[2]
  end

  local cmd = vim.fn.trim(vim.fn.substitute(input, mapping .. "\\s\\+", "", ""))

  print("mapping '" .. mapping .. "' to `" .. cmd .. "`")

  vim.keymap.set("n", mapping, function()
    vim.terminal_run(cmd)
  end, { buffer = buffer })
end

function vim.save_session()
  local function get_current_branch()
    local branch = vim.fn.system([[git branch 2>/dev/null | grep -e "^\*" | sed -e "s/\*\s//"]])
    return vim.fn.substitute(branch, "\n", "", "")
  end

  local function get_current_session_file()
    local branch = get_current_branch()

    if branch ~= "" then
      return ".vim-sessions/" .. branch .. ".vim"
    elseif vim.v.this_session ~= "" then
      return vim.v.this_session
    else
      return ".vim-sessions/default.vim"
    end
  end

  local session_file = get_current_session_file()
  local sessions_dir = ".vim-sessions"

  vim.fn.mkdir(sessions_dir, "p")
  vim.cmd("mksession! " .. session_file)
  vim.fn.writefile({ session_file }, sessions_dir .. "/last-session")
  vim.cmd.qall()
end

function vim.create_dir_for_current_file()
  local dir = vim.fn.expand("%:h")
  vim.fn.system("mkdir -p " .. dir)
  vim.cmd.write()
end

local function absolute_path(file)
  return vim.fn.fnamemodify(file, ":p")
end

function vim.browse_file_notes()
  local filetype = vim.o.filetype
  if filetype == "" then
    filetype = vim.fn.expand("%:e")
  end
  local notes_dir = absolute_path("~/Programming/notes/" .. filetype)

  if filetype ~= "" and vim.fn.isdirectory(notes_dir) > 0 then
    telescope.find_files({ cwd = notes_dir })
  else
    print("No notes for '" .. filetype .. "' files")
  end
end

function vim:rename_file()
  local current_name = vim.fn.expand("%")
  local new_name = vim.fn.input("New file name: ", current_name, "file")

  if vim.fn.filereadable(new_name) > 0 then
    print("File '" .. new_name .. "' already exists, ignoring")
    return
  end

  if new_name ~= current_name and new_name ~= "" then
    vim.cmd.saveas(new_name)
    vim.cmd("silent !rm " .. current_name)
  end
end

function vim.source_all_vimrcs()
  local function find_local_vimrcs()
    local cwd = vim.fn.getcwd()
    local home = vim.fn.expand("~")
    local first = true

    return function()
      while cwd ~= nil do
        local candidate
        if first then
          candidate = ".vimrc.local.lua"
        else
          candidate = ".vimrc.local"
        end

        local file = vim.fn.resolve(cwd .. "/" .. candidate)

        if first then
          first = false
        else
          first = true

          if cwd == home or cwd == root then
            cwd = nil
          else
            cwd = vim.fn.fnamemodify(cwd, ":h")
          end
        end

        if vim.fn.filereadable(file) > 0 then
          return file
        end
      end

      return nil
    end
  end
  for file in find_local_vimrcs() do
    print("Sourcing " .. file)
    vim.cmd.source(vim.fn.escape(file, " "))
  end
end

function vim.tab_closed()
  local closed_tab = tonumber(vim.fn.expand("<afile>"))
  local still_open = vim.fn.tabpagenr("$")

  if closed_tab <= still_open then
    vim.cmd.tabprevious()
  end
end
