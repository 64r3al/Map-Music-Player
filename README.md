# Music Player Script for FiveM

This project is a music player script designed for FiveM servers, allowing players to play, pause, and stop music using an intuitive user interface. The script leverages HTML, CSS, and JavaScript for the front end, with Lua handling server interactions.


## Features

- **Play Music**: Users can input a YouTube or Spotify URL to start playing music.
- **Pause/Resume**: Toggle between playing and pausing the current track with a single button.
- **Stop Music**: Stop the music playback at any time.
- **Volume Control**: Adjust the volume dynamically with a slider.
- **Modern UI**: The user interface is built with NextUI components for a sleek and responsive design.
- **NUI Integration**: Fully integrated with FiveM's NUI system for seamless gameplay.

## Installation

1. **Clone the repository**:
   ```bash
   git clone https://github.com/64r3al/music-player-fiveM.git
   ```

2. **Add the resource to your FiveM server**:
   - Place the `music-player` folder in your `resources` directory.
   - Add `start music-player` to your server configuration file (`server.cfg`).

3. **Dependencies**:
   - Ensure you have the `xsound` resource installed on your server for audio playback functionality.

## Usage

- Use the command `/mscplay` to open the music player interface.
- Enter a valid music URL (YouTube or Spotify) and press the **Play** button.
- Use the **Pause** button to pause and resume the track.
- Press **Stop** to stop playback completely.
- Adjust the volume using the slider.

## Contributions

Contributions are welcome! Feel free to submit a pull request or open an issue for any bugs or feature requests.

## Troubleshooting

* If the music player doesn't work, try restarting your game or checking the script logs for errors.
* If you encounter any issues or have feedback, please contact me at [https://discord.gg/Y9e2xh2P].

## Credits

* Developed by IVX
