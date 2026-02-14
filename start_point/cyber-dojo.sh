
# --------------------------------------------------------------
# Text files under /sandbox are automatically returned...
source ~/cyber_dojo_fs_cleaners.sh

function cyber_dojo_exit()
{
  : # ...Remove files we don't want returned.
  cyber_dojo_delete_dirs /sandbox/bin 
  cyber_dojo_delete_dirs /sandbox/obj
  #cyber_dojo_delete_files ...
}
trap cyber_dojo_exit EXIT SIGTERM

dotnet restore --source /home/sandbox/.nuget/packages/
dotnet test --no-restore
