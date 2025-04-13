# transcript for rail.lexis

 [![License: MIT][license-img]][license-url] [![All Contributors][Contributors-img]][Contributors-url]

## API
Using the OpenAI API for transcription:

The OpenAI Whisper API provides audio transcription capabilities through an HTTP endpoint. Key details:

- Endpoint: `https://api.openai.com/v1/audio/transcriptions`
- Method: POST
- Required parameters:
  - `file`: The audio file to transcribe (must be < 25MB)
  - `model`: The model ID to use (e.g. "whisper-1")
- Optional parameters:
  - `language`: The language of the audio (e.g. "en")
  - `response_format`: The format of the transcript ("json", "text", "srt", "verbose_json", or "vtt")
  - `temperature`: The sampling temperature (0-1)

For full API documentation, see:
https://platform.openai.com/docs/api-reference/audio/createTranscription

## API Key

To set up your OpenAI API key:

1. Create or edit the file `~/.julia/config/startup.jl`
2. Add the following line:
   ```julia
   ENV["OPENAI_API_KEY"] = "your-api-key-here"
   ```
3. Replace `your-api-key-here` with your actual OpenAI API key
4. Restart Julia for the changes to take effect

This will automatically set the environment variable whenever you start Julia.

Note: Keep your API key secure and never commit it to version control.

## Contributors 

<!-- ALL-CONTRIBUTORS-LIST:START - Do not remove or modify this section -->
<!-- prettier-ignore-start -->
<!-- markdownlint-disable -->

<!-- markdownlint-restore -->
<!-- prettier-ignore-end -->
<!-- ALL-CONTRIBUTORS-LIST:END -->


[license-img]: https://img.shields.io/badge/license-MIT-green.svg
[license-url]: https://opensource.org/licenses/MIT

[Contributors-img]: https://img.shields.io/github/all-contributors/raillexis/transcript?color=ee8449&style=flat-square
[Contributors-url]: #Contributors
