# Robocopy (VSTS task)
Robocopy task for build and release pipelines in VSTS or TFS.

### Details

With this task you can copy files and folders on the agent server using Robocopy.

### Options

- **Source:** The source where files or folders will be copied from.
- **Destination:** The destination where the files or folders will be copied to.
- **Files to copy:** Specifies the file or files to be copied. You can use wildcard characters (* or ?), if you want. If the File parameter is not specified, *.* is used as the default value.
- **Copy subdirectories (non empty):** Copies subdirectories. Note that this option excludes empty directories. (/s)
- **Copy all subdirectories:** Copies subdirectories. Note that this option includes empty directories. (/e)
- **Purge destination:** Deletes destination files and directories that no longer exist in the source. (/purge)
- **Move files and directories:** Moves files and directories, and deletes them from the source after they are copied. (/move)
- **Create directory tree only:** Creates a directory tree and zero-length files only. (/create)
- **Exclude files:** Excludes files that match the specified names or paths. Note that FileName can include wildcard characters (* and ?). (/xf)
- **Exclude directories:** Excludes directories that match the specified names and paths. (/xd)
- **Number of retries:** Specifies the number of retries on failed copies. The default value of N is 1,000,000 (one million retries). (/r:<N>)
- **Other Robocopy options:** Robocopy accepts a few command line options (e.g. /S /E /Z).
