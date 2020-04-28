param (
	[string]$source,
	[string]$destination,
	[string]$createStampedBackupFolder,
	[string]$copyOptions
)

function Get-Stamped-Destination($destination) {
	$stampedFolderName = get-date -format "yyyy-MM-dd"
	$count = 1
	$stampedDestination = Join-Path $destination $stampedFolderName
	while(Test-Path $stampedDestination) {
		$count++
		$stamped = $stampedFolderName + "(" + $count + ")"
		$stampedDestination = Join-Path $destination $stamped
	}
	return $stampedDestination
}

if($createStampedBackupFolder -like "True" ) {
	$destination = get-stamped-destination $destination
}

$options = $copyOptions -split "\s+"

if(Test-Path -Path $source) {
	robocopy $source $destination $options
}


if($LastExitCode -gt 8) {
	exit 1
}
else {
	exit 0
}


