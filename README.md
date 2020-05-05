# Robocopy (VSTS task)
Robocopy tasks for build and release pipelines in Azure Devops.

| Step | Status |
| ------------- | ------------- |
| Build | [![Build Status](https://dev.azure.com/jungerius/VSTS%20Extensions/_apis/build/status/chrisism.VSTS.Robocopy?branchName=master)](https://dev.azure.com/jungerius/VSTS%20Extensions/_build/latest?definitionId=2&branchName=master) | 
| Release | [![Test Status](https://vsrm.dev.azure.com/jungerius/_apis/public/Release/badge/23ef30ed-d143-4bff-985d-a3679df39d3f/1/1)](https://vsrm.dev.azure.com/jungerius/_apis/public/Release/badge/23ef30ed-d143-4bff-985d-a3679df39d3f/1/1) |
  
------
Are these devops extensions helping you? 

[![](https://www.paypalobjects.com/en_US/i/btn/btn_donate_SM.gif)](https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BSMTZP9VKP8QN)

### Details

With these you can copy or backup files and folders on the agent server using Robocopy.
Robocopy, or "Robust File Copy", is a command-line directory and/or file replication command. Robocopy functionally replaces Xcopy, with more options. It has been available as part of the Windows Resource Kit starting with Windows NT 4.0, and was first introduced as a standard feature in Windows Vista and Windows Server 2008. 

### Robocopy
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

### Backup folder
### Options
- **Source:** The source directory where files and folders will be copied from.
- **Destination folder:** The Destination where the files will be copied to.
- **Robocopy options:** Robocopy accepts a few command line options (e.g. /S /E /Z).
- **Create stamped backup folder:** If set to True then it will create a dated backup folder under the destination folder (e.g. c:\\backup\\2014-05-11).

## Release notes

#### 1.1.3
  Changed project infrastructure and small fixes.

#### 1.1.0
- Added support for multiple wildcards.  
See [issues #6](https://github.com/chrisism/VSTS.Robocopy/issues/6) for details.

