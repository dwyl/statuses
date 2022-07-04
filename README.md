<div align="center">

# `statuses`

[![Hex pm](http://img.shields.io/hexpm/v/statuses.svg?style=flat-square)](https://hex.pm/packages/statuses)
![GitHub Workflow Status](https://img.shields.io/github/workflow/status/dwyl/statuses/Elixir%20CI?label=build&style=flat-square)
[![codecov.io](https://img.shields.io/codecov/c/github/dwyl/statuses/main.svg?style=flat-square)](http://codecov.io/github/dwyl/statuses?branch=main)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat-square)](https://github.com/dwyl/statuses#contributing)
[![HitCount](http://hits.dwyl.com/dwyl/statuses.svg)](http://hits.dwyl.com/dwyl/statuses)

</div>



# Why?

We found ourselves repating **`statuses`**
in various projects.
So we decided to 
[**`"DRY"`**](https://en.wikipedia.org/wiki/Don't_repeat_yourself)
and make this single-feature micro-package.
# What?

[`statuses.json`](https://github.com/dwyl/statuses/blob/main/statuses.json)
is a maintainable `JSON` file
that anyone can read 
to be informed of **`statuses`**
used in our App(s).
It makes it easier for us to keep **`statuses`**
in one place 
and means 
anyone can contribute.
# Who?

This package is for us by us. <br />
We don't expect anyone else to use it.
But it's Open Source so that
anyone using our Apps can view 
and contribute to it.

# How?
## Installation

Add `statuses` 
to your dependencies 
in `mix.exs`:

```elixir
def deps do
  [
    {:statuses, "~> 1.0.0"},
  ]
end
```

Documentation available at: 
[hexdocs.pm/statuses](https://hexdocs.pm/statuses)

