try {
        oh-my-posh init pwsh | Invoke-Expression
} catch {
        set-location ~
        oh-my-posh init pwsh | Invoke-Expression
}
New-Alias -Name pacman -Value safe-Pacman
New-Alias -Name ls -Value Get-ChildItem
New-Alias -Name rm -Value Remove-Item
New-Alias -Name cp -Value Copy-Item
New-Alias -Name mv -Value Move-Item
$env:XDG_RUNTIME_DIR = ("/run/user/") + (id -u)
$env:DOCKER_HOST = "unix://" + $env:XDG_RUNTIME_DIR + "/podman/podman.sock"
