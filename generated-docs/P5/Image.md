## Module P5.Image

#### `createImage`

``` purescript
createImage :: P5 -> Int -> Int -> Image
```

[p5js.org documentation](https://p5js.org/reference/#/p5/createImage)

#### `saveCanvas`

``` purescript
saveCanvas :: P5 -> (Maybe String) -> (Maybe String) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/saveCanvas)


### Re-exported from P5.Image.LoadingAndDisplaying:

#### `tint5`

``` purescript
tint5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/tint)

#### `tint4`

``` purescript
tint4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/tint)

#### `tint3`

``` purescript
tint3 :: P5 -> Color -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/tint)

#### `tint2`

``` purescript
tint2 :: P5 -> (Array Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/tint)

#### `tint`

``` purescript
tint :: P5 -> String -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/tint)

#### `noTint`

``` purescript
noTint :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noTint)

#### `loadImage`

``` purescript
loadImage :: P5 -> String -> Maybe (Image -> Effect Unit) -> Maybe (Effect Unit) -> Image
```

[p5js.org documentation](https://p5js.org/reference/#/p5/loadImage)

#### `imageMode`

``` purescript
imageMode :: P5 -> ImageMode -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/imageMode)

#### `image2`

``` purescript
image2 :: P5 -> ElementOrImage -> Number -> Number -> Number -> Number -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/image)

#### `image`

``` purescript
image :: P5 -> ElementOrImage -> Number -> Number -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/image)

### Re-exported from P5.Image.Pixels:

#### `updatePixels`

``` purescript
updatePixels :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/updatePixels)

#### `set`

``` purescript
set :: P5 -> Number -> Number -> NumberOrArrayNumberOrColorOrImage -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/set)

#### `loadPixels`

``` purescript
loadPixels :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/loadPixels)

#### `get`

``` purescript
get :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> ArrayNumberOrImage
```

[p5js.org documentation](https://p5js.org/reference/#/p5/get)

#### `filter`

``` purescript
filter :: P5 -> FilterType -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/filter)

#### `copy2`

``` purescript
copy2 :: P5 -> ElementOrImage -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/copy)

#### `copy`

``` purescript
copy :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/copy)

#### `blend`

``` purescript
blend :: P5 -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> Int -> BlendMode -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/blend)

