#	fns
function -cnc{
    dotnet nuget locals all --clear;
}
function -gorepos					#Goes to repos directory
{
	cd D:\source\repos;
}
function -gfgp						#Git fetch, git pull
{
	git fetch; git pull;
}
function -gcb([string]$name)				#Git new branch
{
	git checkout -b $name;
	git status;
}
function -gc([string]$name)				#Git checkout
{
	git checkout $name;
}
function -gs						#Git status
{
	git status;
}
function -gco([string]$name)				#Git commit
{
	git commit -m "$name";
}
function -gp						#Git push (with upstream if needed)
{
	git push;
	if ("$?" -eq "False"){
		$branchName = $(git rev-parse --abbrev-ref HEAD);
		git push --set-upstream origin $branchName;	
	}
}
function -dr						#Dotnet run
{
	dotnet run;
}
function -yi						#Yarn install
{
	yarn install;
}
function -yr						#Yarn run
{
	yarn run;
}
function -prof([switch]$e, [switch]$r, [string] $s)		#Profile management
{
	$profilePath = "C:\Users\przem\Documents\PowerShell\Profile.ps1"
	if("$r" -eq "True"){
		pwsh $profilePath;
		return;
	}
	if("$e" -eq "True"){
		vim $profilePath;
		return;
	}
	if("$s" -ne ""){
		-prof | select-string "$s" | more;
		return;
	}
	cat $profilePath | select-string "function" | select-string 'select-string "function"' -NotMatch | more;
	
}
