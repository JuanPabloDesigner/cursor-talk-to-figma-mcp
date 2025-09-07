# Create .cursor directory if it doesn't exist
if (!(Test-Path ".cursor")) {
    New-Item -ItemType Directory -Path ".cursor"
}

# Install dependencies
bun install

# Create mcp.json with the current directory path
$mcpConfig = @{
    mcpServers = @{
        TalkToFigma = @{
            command = "bunx"
            args = @("cursor-talk-to-figma-mcp@latest")
        }
    }
}

$mcpConfig | ConvertTo-Json -Depth 3 | Out-File -FilePath ".cursor/mcp.json" -Encoding UTF8

Write-Host "Setup completed successfully!"
Write-Host "MCP configuration created in .cursor/mcp.json" 