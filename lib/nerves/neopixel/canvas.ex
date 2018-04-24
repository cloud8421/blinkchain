defmodule Nerves.Neopixel.Canvas do
  @moduledoc """
  # `Nerves.Neopixel.Canvas`
  Represents a virtual drawing canvas of size `width` x `height`
  """

  alias Nerves.Neopixel.Canvas

  @typedoc @moduledoc
  @type t :: %Canvas{
    width: Neopixel.uint16(),
    height: Neopixel.uint16()
  }

  defstruct [
    :width,
    :height,
  ]

  @doc "Build a `t:Canvas.t/0` struct with a given `width` and `height`"
  def new(width, height) when is_integer(width) and is_integer(height) do
    %Canvas{width: width, height: height}
  end
  def new(_width, _height) do
    raise "width and height must be integers"
  end

end
