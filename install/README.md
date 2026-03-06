## Cheat sheet for windows

### Install packages

If everything is working okay:

```
winget configure winget.yaml
```

Make sure winget is the latest version. This should work:

```
winget upgrade Microsoft.AppInstaller --source winget
```

Install PowerShell 7. Pretty sure this was necessary:

```
winget install Microsoft.PowerShell --source winget
```

And lastly:

```
winget configure --enable
```

I kept running into problems. Might have been from false starts before
I realized that winget was an old version. In case there are any weird
errors you can clean things up running in admin mode:

```
Install-Module Microsoft.WinGet.Client -Force
Repair-WinGetPackageManager -Force -Latest 
```

### Upgrade all packages

```
winget upgrade --all --source winget
```

