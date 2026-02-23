# Dracula's Castle — An Interactive Adventure

An [Inform 7](http://inform7.com/) text adventure set in Dracula's Castle, modernized from a classic BASIC original.

Explore the castle, gather tools and clues, and uncover its dark secret before midnight strikes.

## Play Online

**[Play Dracula's Castle](https://johnesco.github.io/dracula/)** — hosted on GitHub Pages with in-browser gameplay via [Quixe](https://eblong.com/zarf/glulx/quixe/).

## Project Structure

```
story.ni           Inform 7 source (edit here)
src/basic/         Original BASIC source (read-only reference)
web/               GitHub Pages site
  index.html       Landing page
  play.html        In-browser game player (Quixe)
  dracula.ulx.js   Compiled game (base64 Glulx)
  lib/             Client-side interpreter libraries
```

## Building

The Inform 7 source is `story.ni` at the repo root. To compile, open it in the [Inform 7 IDE](http://inform7.com/downloads/) or use the command-line compilers. After compiling, base64-encode the `.ulx` output into `web/dracula.ulx.js`.

## Credits

Modernized from a classic BASIC text adventure. This Inform 7 version expands on the original with richer descriptions, additional puzzles, and a full web-playable interface.

## License

MIT License — see [LICENSE](LICENSE) for details.
