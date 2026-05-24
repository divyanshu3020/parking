$root = (Get-Item .).FullName.TrimEnd('\')
Write-Output "$(Split-Path $root -Leaf)/"
Get-ChildItem -Recurse -Force | Where-Object { $_.FullName -notmatch '\\(node_modules|\.git|\.next)($|\\)' } | Sort-Object FullName | ForEach-Object {
    $rel = $_.FullName.Substring($root.Length).TrimStart('\')
    $parts = $rel.Split('\')
    $indent = '  ' * ($parts.Count - 1)
    Write-Output "$indent+-- $($_.Name)"
}
