# Dracula's Castle — Inform 7

An Inform 7 text adventure modernized from a classic BASIC original.

This repo holds the **Inform 7 translation** (the canonical/Current playable version). The original BASIC version lives in its own repo:

| Version | Repo | Engine |
|---|---|---|
| Inform 7 (Current) | `Johnesco/dracula` (this repo) | Inform 7 (.ulx via Parchment) |
| v0 | `Johnesco/dracula-v0` | wwwBASIC (browser-side BASIC interpreter) |

Local clones:
- `/c/code/text-games/i7/dracula/` — this repo
- `/c/code/text-games/wwwbasic/dracula-v0/` — original BASIC version

For the multi-version model (per-repo deploy, hub registration, change-propagation rules), see `C:\code\ifhub\reference\multi-version-guide.md`.

For build, test, and publish workflows, see `C:\code\ifhub\reference\project-guide.md`.

## Project-Specific Notes

- `src/basic/` contains the original BASIC source as a read-only reference (the playable BASIC version is in the `dracula-v0` repo).
- CSS overlay: static dark theme (no dynamic mood effects).
- Both the dracula and dracula-v0 GH Pages sites are linked together via `landing.json` — the IF Hub group page lists both versions.

## Game Overview

- **Max score**: 1 point (awarded for killing Dracula)
- **Setting**: Dracula's Castle — explore rooms, gather items, survive until you can confront Dracula
- **Win condition**: Kill Dracula before he kills you (real-time clock ticks from 8:00 PM; he wakes at midnight if not staked)
- **Scope**: 19 rooms, 25 objects, ~12 interlocking puzzles
