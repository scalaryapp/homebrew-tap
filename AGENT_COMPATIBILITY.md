# Agent compatibility inventory: homebrew-tap

SCA-3623 · inventoried from `origin/main` on 2026-10-22.

This is an internal repository inventory. **docs/config only; no runtime change**.

## Instructions

There was no Scalary-owned `CLAUDE.md` or `AGENTS.md` in this repository. No project instructions were invented for this migration.

## Repository skills

No `.claude/skills/*` items are present.

## Settings and hooks

No tracked `.claude/settings*.json` files or repository-local Claude hooks are present. No local settings files were found at inventory time. User or managed settings can still supply hooks outside this checkout.

Codex documents lifecycle hooks in `.codex/hooks.json` or inline `[hooks]` in `.codex/config.toml`, with trust review for non-managed definitions. This describes an equivalent mechanism, not a tested hook port in this Conductor session.

**Account-broker hooks stay Claude-only by design.** `account-broker-hook`, `SessionStart` and `UserPromptSubmit` broker registrations are excluded from porting; no broker scripts, settings, or credentials are changed.

## MCP

No tracked agent-client `.mcp.json`, `.mcp.local.json`, `mcp.json`, Cursor/VS Code MCP configuration, or `.github/copilot-mcp.json` is present. No repository-local Codex MCP configuration is added.

## Verification and limits

Inventory paths were checked against the fetched Git tree, including nested instruction files and tracked configuration. Existing instructions, skills, hook files and MCP configuration are preserved. Migration checks compare canonical instruction bytes against the original Git blobs and require each converted `CLAUDE.md` to contain exactly `@AGENTS.md` plus a newline.

Claude Code documents that `@path` imports expand into context at launch and resolve relative to the importing file. The cross-repository SCA-3623 report records the live CLI probe or its failure. This inventory does not claim that Claude-only skills, MCP registrations or hooks are automatically available to Codex.

## References

- [Claude Code instruction imports](https://code.claude.com/docs/en/memory#import-additional-files)
- [Codex instruction discovery](https://learn.chatgpt.com/docs/agent-configuration/agents-md)
- [Codex skills and symlink discovery](https://learn.chatgpt.com/docs/build-skills#where-codex-loads-local-skills)
- [Codex MCP configuration](https://learn.chatgpt.com/docs/extend/mcp?surface=cli)
- [Codex hooks](https://learn.chatgpt.com/docs/hooks)
- [Conductor MCP scopes and status](https://www.conductor.build/docs/reference/mcp)
