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
e.g:
[auth/init/**statuses.ex**](https://github.com/dwyl/auth/blob/568d0fd7a4a4f7ec53514c76e0e263c3f82e61ca/lib/auth/init/statuses.ex#L3-L106)
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
We don't expect anyone else to use it, <br />
but it's 
[Open Source](https://github.com/dwyl/intellectual-property)
so that
anyone using our Apps can view 
and contribute to the list.

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

## Usage

```elixir
statuses = Statuses.parse_json()
# use them how you see fit
```

## Todo

Add link to where this is used in MVP.

Documentation available at: 
[hexdocs.pm/statuses](https://hexdocs.pm/statuses)

