# Agentic Instructions for Paseo Demo

## Project Overview
- Scaffold for agentic projects using OpenCode.
- Persistent SQLite storage: `./data/opencode.db`.
- Docker environment: `docker-compose.yaml` available.

## Key Commands
- `./paseo/opencode-tool cheatsheet`: View OpenRouter setup instructions.
- `./paseo/opencode-tool setup-env`: Interactively configure `.env`.
- `./paseo/opencode-tool serve`: Start headless server with recommended defaults.

## Configuration & Environment
- Environment Variables: Defined in `.env` (managed via `opencode-tool setup-env`).
- OpenRouter Default: `google/gemini-2.0-flash-lite-preview:free`.
- Required Env Key: `GH_TOKEN` for repository interactions.

## Development Workflow
- Always verify `.env` presence and content (excluding secrets).
- Use `opencode` CLI tools (e.g., `opencode providers`) for auth management.
- Configuration resides in `/root/.config/opencode/`.
