ParabaikElixirConverter
=======================

ParabaikElixirConverter is just a [Elixir](http://elixir-lang.org) version of [Parabaik](https://github.com/ngwestar/parabaik) converter. It can convert from Unicode to Zawgyi-One and Zawgyi-One to Unicode vice versa.

##### Installation

In your mix.ex,

```elixir
defp deps do
  [{:parabaikElixirConverter, "~> 0.0.1"}]
end
```

##### Usage

```elixir
Z12Uni.convert(text) # Zawgyi-One to Unicode
```
    
```elixir
Uni2Z1.convert(text) # Unicode to Zawgyi-One
```
