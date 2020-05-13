# sseom
SpectrumScale - Execute On Manager

If you are running the IBM SpectrumScale file system, there are some commands
that are easiest when executed on the cluster manager node.  This script ensures
that whatever you run, will only execute if the node it is running on is the
cluster manager.  This lets you configure a cron entry on all of the manager 
nodes for redundancy, but ensures that it will only execute on the manager.

It also allows you to use the --maint option to put in place a lock file for
maintenance mode. When this happens, sseom will not execute any commands until
the --eomaint option has been executed to remove the lock.  This is quite helpful
for maintenance windows.
