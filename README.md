# omoidasu - 思い出す

A collection of scripts for working with
[oboeru](https://github.com/0x766F6964/oboeru) 

## Installation

Use `make` to install (using root as needed):

	make install

Scripts are installed to `PREFIX=/usr/local` by default.

## Directory Structure

These scripts assume a directory structure as follows:

	./
	  config
	  deck1.deck
	  deck1.data
	  deck1/
	        cardid1/
	                front.md
	                back.md
	                image.png
	                audio.ogg
	                extra.html
	        cardid2/
	                ...
	  deck2.deck
	  deck2.data
	  deck2/
	        ...
	  ...

## Scripts

All scripts in this repo should work with standard POSIX compliant core
utils. If they don't open an issue.

* `omoidasu`: creates a default `config` in the current directory.
* `gencard`: creates a new card and associated directory for the specified
   deck and opens the front and back in an `$EDITOR`.
* `deck2data`: converts the front and back of the card to the data format
   expected by oboerudata
* `review`: ties all the programs together starts reviews on the specified decks
* `fetchcard`: takes the deck and id output by oboeru and finds the cards path
* `nextcardid`: finds the next available id in a supplied deck file

The following are specific for studying Japanese:

* `furigana`: uses `kakasi` and `sed` to convert text on stdin into furigana
   reading pairs expected by `rubify`.
* `rubify`: converts furigana reading pairs from `furigana` into html ruby text

## Extra

The tag `==EXTRA==` can be used on the card to inject the file
`extra.html` into the output html. It can be used to keep the cards
clean and readable when you want to include something complicated like
a pitch graph.
