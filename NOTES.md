## pull. 2.0.2

- Fixed "Update check failed: unknown message": after the files were updated, the browser could keep running the old pull. in the background. pull. now spots that and restarts itself.
- The same fix brings Stills and the new YouTube buttons to anyone who installed over an older version without restarting the browser.
- Setup on Windows: click Load unpacked and pull. fills in the folder and presses Select Folder for you — no more copying and pasting the path.
- Stills work on YouTube again: when the stream can't be read directly, pull. fetches the video track first and makes the stills from that.
- Stills progress shows while the video is being fetched.
- YouTube: the pull. and capture buttons are their own small group at the start of the control bar, centred and sized like YouTube's buttons.
- Updates replace the extension's files in place, so the browser never sees a half-copied folder, and update steps are written to the helper log.
- Safari: the update progress keeps coming through until the install finishes.

**Install:** Windows → pull-setup-win.exe · Mac → pull-setup-mac.zip, or the one-line installers in the README.
