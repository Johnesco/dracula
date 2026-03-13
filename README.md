# Dracula's Castle — An Interactive Adventure

An [Inform 7](http://inform7.com/) text adventure set in Dracula's Castle, modernized from a classic BASIC original.

Explore the castle, gather tools and clues, and uncover its dark secret before midnight strikes.

## Play Online

**[Play Dracula's Castle](https://johnesco.github.io/dracula/)** — hosted on GitHub Pages with in-browser gameplay via [Quixe](https://eblong.com/zarf/glulx/quixe/).

## Project Structure

```
story.ni           Inform 7 source (edit here)
src/basic/         Original BASIC source (read-only reference)
index.html         Landing page
play.html          In-browser game player (Parchment)
lib/parchment/     Parchment engine + dracula.ulx.js (base64 Glulx)
```

## Building

The Inform 7 source is `story.ni` at the repo root. To compile: `python /c/code/ifhub/tools/compile.py dracula`. This compiles the source and updates the web player binary at `lib/parchment/dracula.ulx.js`.

## Credits

Modernized from a classic BASIC text adventure. This Inform 7 version expands on the original with richer descriptions, additional puzzles, and a full web-playable interface.

## License

MIT License — see [LICENSE](LICENSE) for details.
