# Dracula's Castle — Project Guide

An Inform 7 text adventure modernized from a classic BASIC original. Published to GitHub Pages at `johnesco.github.io/dracula/`.

## Project Structure

```
C:\code\ifhub\projects\dracula\
├── CLAUDE.md              ← You are here
├── README.md              ← Public-facing description
├── story.ni               ← Source of truth (Inform 7 source)
├── dracula.ulx            ← Compiled Glulx binary (build output, gitignored)
├── index.html             ← Landing page
├── play.html              ← Browser-playable game (Parchment player)
├── source.html            ← Source browser
├── walkthrough.html       ← Walkthrough viewer
├── lib/parchment/         ← Parchment JS libraries + dracula.ulx.js (base64 binary)
├── src/basic/             ← Original BASIC source (read-only reference)
├── v0/                    ← BASIC version (wwwBASIC player, annotated source)
└── tests/
    ├── project.conf       ← Project-specific test configuration
    ├── seeds.conf         ← Golden seeds for deterministic testing
    └── inform7/
        ├── walkthrough.txt        ← Walkthrough commands
        └── walkthrough_output.txt ← Generated transcript
```

## GitHub Repository

- **Repo**: `Johnesco/dracula`
- **GitHub Pages**: `johnesco.github.io/dracula/`
- **IF Hub**: Served in-place — the hub iframes pages directly from GitHub Pages

## Shared Resources

- **Inform 7 hub**: `C:\code\ifhub\CLAUDE.md` — syntax guides, compiler docs, testing framework
- **Syntax reference**: `C:\code\ifhub\reference\syntax-guide.md`
- **Text formatting**: `C:\code\ifhub\reference\text-formatting.md`
- **Testing framework**: `C:\code\ifhub\tools\testing\` — generic scripts driven by `project.conf`
- **Native interpreters**: `C:\code\ifhub\tools\interpreters\` — `glulxe.exe`, `dfrotz.exe` (build with `build.sh` in MSYS2)
- **RegTest runner**: `C:\code\ifhub\tools\regtest.py`
- **Web player setup**: `C:\code\ifhub\tools\web\` — Parchment libraries, template, setup script
- **Pipeline**: `C:\code\ifhub\tools\pipeline.py` — compile → test → push orchestrator
- **CSS overlay**: `C:\code\ifhub\reference\css-overlay.md` — play.html theming architecture

## Building

```bash
# Compile + update web player (recommended)
python /c/code/ifhub/tools/compile.py dracula

# Or via pipeline (compile + test)
python /c/code/ifhub/tools/pipeline.py dracula compile test
```

## Web Player

Open `play.html` in a browser to play. Uses Parchment (JS Glulx interpreter) with a static dark theme CSS overlay (no dynamic mood effects).

To serve locally (avoids file:// CORS issues):
```bash
python /c/code/ifhub/tools/dev_server.py
# Then open http://127.0.0.1:8000/dracula/play.html
```

After recompiling, the compile script automatically updates the web binary.

## Testing

Tests use the shared framework at `C:\code\ifhub\tools\testing\`. Platform detection in `project.conf` auto-selects native `glulxe.exe` (Git Bash) or WSL `glulxe` (Linux).

```bash
# Run walkthrough (native — no WSL needed if interpreters are built)
python /c/code/ifhub/tools/testing/run_walkthrough.py --config tests/project.conf

# Find golden seeds
python /c/code/ifhub/tools/testing/find_seeds.py --config tests/project.conf

# Or via pipeline
python /c/code/ifhub/tools/pipeline.py dracula compile test
```

## Versions

- **Current** (Inform 7): Full modernization with richer descriptions, additional puzzles, and web player
- **v0** (BASIC): Original BASIC source playable via wwwBASIC in the browser

## Game Overview

- **Max score**: 1 point (awarded for killing Dracula)
- **Setting**: Dracula's Castle — explore rooms, gather items, survive until you can confront Dracula
- **Win condition**: Kill Dracula before he kills you

## Key Rules

- `story.ni` is the single source of truth
- Do NOT create `.inform/` IDE bundles
- For Inform 7 syntax and conventions, see `C:\code\ifhub\CLAUDE.md`
