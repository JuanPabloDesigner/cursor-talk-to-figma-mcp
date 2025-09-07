@echo off

REM Create .cursor directory if it doesn't exist
if not exist ".cursor" mkdir .cursor

REM Install dependencies
bun install

REM Create mcp.json with the current directory path
echo {> .cursor/mcp.json
echo   "mcpServers": {>> .cursor/mcp.json
echo     "TalkToFigma": {>> .cursor/mcp.json
echo       "command": "bunx",>> .cursor/mcp.json
echo       "args": [>> .cursor/mcp.json
echo         "cursor-talk-to-figma-mcp@latest">> .cursor/mcp.json
echo       ]>> .cursor/mcp.json
echo     }>> .cursor/mcp.json
echo   }>> .cursor/mcp.json
echo }>> .cursor/mcp.json

echo Setup completed successfully!
echo MCP configuration created in .cursor/mcp.json 