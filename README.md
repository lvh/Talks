# Getting started

This repo uses a revealjs submodule. After cloning run `git submodule init` and
`git submodule update`.

You need grunt, so `npm install -g grunt-cli`. You need pandoc.

In this directory, run `make` to build the presentations. In `reveal.js`, run
`npm install` once to get all the dependencies, and then `grunt serve` to run
the server. The presentations will be served at http://localhost:8000/Contents/.

# Credits

The reveal.js template was shamelessly stolen from [a Gist][gist] and then
adapted somewhat.

[gist]: https://gist.github.com/gwijthoff/7035617
