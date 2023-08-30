`Thursday 10 August 2023`
# Command Line Control Presentation

## Description
This README covers the presentation's content. 

Command Line For Control is about the value and joy of building simple software solutions. 

## Session Details
#### Event: [Black Is Tech 2023](https://blackistechconference.com/)
#### Session: Command Line For Control
#### Presenter: [Jack A. L.](https://jack-jack-jack.com)
#### Date: 2023 August 10
#### Time: 16:30 - 17:45
#### Location: Georgia World Congress Center, G Ballroom, Software Engineering Stage

## Session Description

The founding perspective of this session stems from a belief.

Modern tool chains do not have to be lengthy, intrusive, nor expensive. 

I did consider: computing resources, data, and other overhead.

Throughout the session, several scripts will be demoed. 

And post-presentation, each demonstration will be available for audience members via a public repository.

## Personal Motivation for the Presentation
I am an avid terminal user. This choice has transformed my computing experience. 

Also, I was motivated to measure what I know (and don't know) in relation to the subject. 

And contextualizing my knowledge for an audience of various skill levels felt like an engaging challenge.

## What is in this Repository?
The content includes:
* All demo scripts
* Relative directories
* a dotfile (copy my configuration)
* PowerPoint of the presentation
* Merch files
* Promo files
* Reading Material (USB only 😊)
* Test videos.

## Scripts
* `btcgrep.sh <file> <output-destination>`
	- `<file>` is an actual file to inspect.
	- `<output-destination>` is a directory to save results of the grep. You could always default to `./commandlinedemo/grepping-for-data`
* `byeds.py <path>`
	- `<path>` is directory. Script will look here for `.DS_Store`.
* `emailgrep.sh <file> <output-destination>`
	- `<file>` is an actual file to inspect.
	- `<output-destination>` is a directory to save results of the grep. You could always default to `
* `ethgrep.sh <file> <output-destination>`
	- `<file>` is an actual file to inspect.
	- `<output-destination>` is a directory to save results of the grep. You could always default to `
* `goreadme.sh <absolute-path> <readme-title>`
	- `<absolute-path>` is an absolute path to a directory. This is important! The script is built around using an absolute path.
	- `<readme-title>` this is the `# Title` in the `README.md` file. Passing it as an argument saves from having to enter the title during the prompt loop.
* `ipgrep.sh <file> <output-destination>`
	- `<file>` is an actual file to inspect.
	- `<output-destination>` is a directory to save results of the grep. You could always default to `
* `phonegrep.sh <file> <output-destination>`
	- `<file>` is an actual file to inspect.
	- `<output-destination>` is a directory to save results of the grep. You could always default to `
* `ssngrep.sh`
	- `<file>` is an actual file to inspect.
	- `<output-destination>` is a directory to save results of the grep. You could always default to `
* `voicenote.sh <note> <voice-name> <alias>`
	- `<note>` this is string to pass in. this it what will be translated to audio.
	- `<voice-name>` a valid voice from the system's speech synthesis engine.
		+ In a terminal: type `say -v "?"` to see a list of voices.
	- `<alias>` this is the descriptor name. It is used when creating the file name.
		+ Example. If `<alias>="thoughts-about-whales`: file will be named, `$DATE_voicenote_thoughts-about-whales.aiff`
* `welcomemsg.sh <msg> <voice-name>`
	- `<msg>` this is string to pass in. this it what will be translated to audio. 
	- `<voice-name>` a valid voice from the system's speech synthesis engine.
		+ In a terminal: type `say -v "?"` to see a list of voices.

## Installation
For the scripts to work:
1. leave them in the `./commandlinedemo/scripts` folder.
2. Copy the content of `dotfile` into your configuration file (likely `.bashrc, .zshrc, or .profile`).
3. Source your configuration file.
    - From a terminal: `source <your-configuration-file>` or `exec $SHELL`
4. Run any script via its alias.
    - Example: `deskoff`
    - Some aliases require arguments. Refer to scripts section for arguements. Also, you could inspect the source code for any script, and reference its `@usage` callout in the header comments of the script. 

## Extras
* Reading Materials (USB-only, or message me for the .pdf)
	- Automate the Boring Stuff with Python [Al Sweigart](https://alsweigart.com/)
	- Cracking Codes with Python [Al Sweigart](https://alsweigart.com/)
	- How Linux Works by Brian Ward
	- Learn Enough Developer Tools to be Dangerous by [Michael Hartl](https://www.michaelhartl.com/)
	- Mastering Python for Networking Security by [Jose Manual Ortega](https://github.com/jmortega)
	- The Linux Command Line by William E. Shotts
	- Wicked Cool Shell Scripts by Dave Taylor, Brandom Perry
* Test Voiceovers
* ctrl key design file
