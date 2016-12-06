# What's this

This is a repository with reconstructed source code for AM2R.

If you aren't already familiar with AM2R, this repository likely won't be of much value for you.

## Copyrighted materials

There are no copyrighted materials included.

In fact, there aren't _any_ materials included - only the [reconstructed] code.

Furthermore, the code is stripped of any mentions of Concerned Party' trademarks.

## How was this done

By very gradually rebuilding equivalent code for dumped bytecode from the 1.1' binary and gradually organizing everything into an actual GameMaker: Studio project. No magic, unfortunately.

## How long did this take

_Too long._

While most of game logic is relatively simple, there's just too much of it (~50 000 lines of code total).

Another thing is that even just rebuilding equivalent code for bytecode is not enough for it to be readable - all constants and resource references are converted to numeric values during compilation, and accurately substituting the pile of magic numbers was a hell of a task.

While I think I was able to get this to a fairly readable state (including formatting and notes at key points), this is not something that I intend to do again in foreseeable future (if ever).

## License

The source code is intended strictly for personal use.

While text of DMCA takedown notice was not published, it is safe to assume that you are not allowed to publish modified binary builds containing the copyrighted materials.

Since DoctorM64 did not intend to release the source code, it is safe to assume that bits of it are not intended for use outside of the project (moreso without having original documentation).

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Installing

Requirements: You must have a copy of AM2R backed up from the original release.

1. Download and install [GameMaker: Studio](http://www.yoyogames.com/get) if you don't have it yet. Free version is sufficient.

2. Download and extract [GmxDataSync](https://bitbucket.org/yal_cc/gmxdatasync/) somewhere.

3. Download and extract this repository somewhere.

4. Place the `data.win` file from AM2R 1.1 into the project directory.

5. Drag the `data.win` file onto the GmxDataSync executable. If everything is correct, this will populate the project with art/audio assets from the binary.
At this point you can open the project in GameMaker: Studio (note: takes a while to load) and start poking around.

6. [optional] Copy music files (.ogg) from game directory into "audio" directory inside the "sound" directory of the project (the game will still work without music, though).

7. [optional] Edit `datafiles/lang/english.ini` to use original names (if you are concerned).

## Things to keep in mind

* Reordering assets can be dangerous:
    
    Asset indexes in compiled binary depend on asset order in IDE therefore you want them to match up.
    
    Therefore you can re-categorize assets but they should still be in same order inside the resource tree.

* Magic numbers:
    
    Sometimes you might encounter leftover numeric values that are, in fact, resource indexes or constants.
    
    In such case you can look up uses of a variable/value (Ctrl+Shift+F), and, if it's indeed a resource index, lookup the name in `AM2R-Indexes.txt` 

* Spoilers(_!_): You probably don't want to poke around the source before you've gotten all you wanted out of the game through playing it.

## Known issues

* Not compatible with original savegames. Possibly due to either decoding the encryption routine incorrectly or decoding the game ID incorrectly.

* Audio assets have largely incorrect export settings due to this information not being included in datafile format (as far as I know).

* Asset categorization is a mess due to being done before anything else was.

## Useful tools

* Notepad++/Sublime Text 2/equivalent: You'll need a decent code editor for carrying out any large-scale searches and substitutions across the source code.

* [GmxOrg](https://bitbucket.org/yal_cc/gmxorg): Allows to use a text/code editor to quickly organize project assets (without dragging around in IDE).

* [Altar.NET](https://gitlab.com/PoroCYon/Altar.NET): Can dump the bytecode from the original binary. Good if you find something that does not work correctly and need a way of figuring out how it _should_ have worked.

### Good luck _!_