<div align="center">

# `statuses`

![Elixir Build Status](https://img.shields.io/github/actions/workflow/status/dwyl/statuses/elixir.yml?label=Elixir&style=flat-square)
![Dart Build Status](https://img.shields.io/github/actions/workflow/status/dwyl/statuses/dart.yml?label=Dart&style=flat-square)
[![codecov.io](https://img.shields.io/codecov/c/github/dwyl/statuses/main.svg?style=flat-square)](http://codecov.io/github/dwyl/statuses?branch=main)
[![Hex.pm](https://img.shields.io/hexpm/v/statuses?color=brightgreen&style=flat-square)](https://hex.pm/packages/statuses)
[![pub package](https://img.shields.io/pub/v/statuses.svg?color=brightgreen&style=flat-square)](https://pub.dev/packages/statuses)
[![contributions welcome](https://img.shields.io/badge/contributions-welcome-brightgreen.svg?style=flat-square)](https://github.com/dwyl/statuses#contributing)
[![HitCount](http://hits.dwyl.com/dwyl/statuses.svg)](http://hits.dwyl.com/dwyl/statuses)

</div>

# Why?

We found ourselves repating **`statuses`**
in various projects.
e.g:
[auth/init/**statuses.ex**](https://github.com/dwyl/auth/blob/568d0fd7a4a4f7ec53514c76e0e263c3f82e61ca/lib/auth/init/statuses.ex#L3-L106) <br />
So we decided to 
[**`"DRY"`**](https://en.wikipedia.org/wiki/Don't_repeat_yourself) 
it
and make this single-feature micro-package
we can reuse.

# What?

[`statuses.json`](https://github.com/dwyl/statuses/blob/main/lib/statuses.ex)
is a maintainable list of status structs
that anyone can read 
to be informed of **`statuses`**
used in our App(s).
It makes it easier for us to keep **`statuses`**
in one place 
and means 
anyone can contribute.

# Who?

This package is for us by us.
We don't expect anyone else to use it.
It's 
[Open Source](https://github.com/dwyl/intellectual-property)
so that
anyone using our Apps can view 
and contribute to the list.

# How?

## Elixir

### Installation

Add `statuses` 
to your dependencies 
in `mix.exs`:

```elixir
def deps do
  [
    {:statuses, "~> 1.1.1"},
  ]
end
```

### Usage

```elixir
statuses = Statuses.get_statuses()
# use them how you see fit
```

Documentation available at: 
[hexdocs.pm/statuses](https://hexdocs.pm/statuses)


## Dart

### Installation

You can run the following command
to install the dependency.

```sh
flutter pub add statuses
```

Alternatively,
add `statuses` 
to your dependencies 
in `pubspec.yml`:

```dart
dependencies:
  statuses: ^1.0.0
```

### Usage

```dart
final statusesArray = Statuses.list()
# use them how you see fit
```

Documentation available at: 
[pub.dev/packages/statuses](https://pub.dev/packages/statuses)
