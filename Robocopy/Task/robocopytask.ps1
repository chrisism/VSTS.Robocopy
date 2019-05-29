param (
	[string]$source,
	[string]$destination,
	[string]$files,
	[string]$copySubDirs,
	[string]$copySubDirsAll,
	[string]$purge,
	[string]$move,
	[string]$createtree,
	[string]$excludeFiles,
	[string]$excludeDirs,
	[string]$retries,
	[string]$copyOptions
)

if ($copySubDirs.ToLower() -eq "true" ) {
	$copyOptions = $copyOptions + " /s"
}

if ($copySubDirsAll.ToLower() -eq "true" ) {
	$copyOptions = $copyOptions + " /e"
}

if ($purge.ToLower() -eq "true" ) {
	$copyOptions = $copyOptions + " /purge"
}

if ($move.ToLower() -eq "true" ) {
	$copyOptions = $copyOptions + " /move"
}

if ($createtree.ToLower() -eq "true" ) {
	$copyOptions = $copyOptions + " /create"
}

if ($excludeFiles -ne "" ) {

	$copyOptions = $copyOptions + " /XF $excludeFiles"
}

if ($excludeDirs -ne "" ) {

	$copyOptions = $copyOptions + " /XD $excludeDirs"
}

if ($retries -ne "" ) {

	$copyOptions = $copyOptions + " /R:$retries"
}

$options = $copyOptions -split "\s+"

if(Test-Path -Path $source) {

	Write-Host "Starting Robocopy with the following options: $copyOptions" 

	if ($files -eq "") {
		
		robocopy $source $destination $options
	} else {

		$fileArray = $files -split ','
		robocopy $source $destination $fileArray $options
	}

} else {

	Write-Warning "Source Path '$source' does not exist"
}

if($LastExitCode -gt 8) {
	exit 1
}
else {
	exit 0
}
