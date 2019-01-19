## Module P5.LightsAndCamera


### Re-exported from P5.LightsAndCamera.Camera:

#### `setCamera`

``` purescript
setCamera :: P5 -> Camera -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/setCamera)

#### `perspective`

``` purescript
perspective :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/perspective)

#### `ortho`

``` purescript
ortho :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ortho)

#### `createCamera`

``` purescript
createCamera :: P5 -> Camera
```

[p5js.org documentation](https://p5js.org/reference/#/p5/createCamera)

#### `camera`

``` purescript
camera :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/camera)

### Re-exported from P5.LightsAndCamera.Interaction:

#### `orbitControl`

``` purescript
orbitControl :: P5 -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/orbitControl)

#### `noDebugMode`

``` purescript
noDebugMode :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/noDebugMode)

#### `debugMode5`

``` purescript
debugMode5 :: P5 -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)

#### `debugMode4`

``` purescript
debugMode4 :: P5 -> DebugMode -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)

#### `debugMode3`

``` purescript
debugMode3 :: P5 -> DebugMode -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)

#### `debugMode2`

``` purescript
debugMode2 :: P5 -> DebugMode -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)

#### `debugMode`

``` purescript
debugMode :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/debugMode)

### Re-exported from P5.LightsAndCamera.Lights:

#### `pointLight4`

``` purescript
pointLight4 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)

#### `pointLight3`

``` purescript
pointLight3 :: P5 -> ArrayNumberOrStringOrColor -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)

#### `pointLight2`

``` purescript
pointLight2 :: P5 -> Number -> Number -> Number -> Vector -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)

#### `pointLight`

``` purescript
pointLight :: P5 -> ArrayNumberOrStringOrColor -> Vector -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/pointLight)

#### `directionalLight4`

``` purescript
directionalLight4 :: P5 -> Number -> Number -> Number -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)

#### `directionalLight3`

``` purescript
directionalLight3 :: P5 -> ArrayNumberOrStringOrColor -> Number -> Number -> Number -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)

#### `directionalLight2`

``` purescript
directionalLight2 :: P5 -> Number -> Number -> Number -> Vector -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)

#### `directionalLight`

``` purescript
directionalLight :: P5 -> ArrayNumberOrStringOrColor -> Vector -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/directionalLight)

#### `ambientLight5`

``` purescript
ambientLight5 :: P5 -> Number -> Number -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)

#### `ambientLight4`

``` purescript
ambientLight4 :: P5 -> Number -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)

#### `ambientLight3`

``` purescript
ambientLight3 :: P5 -> Color -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)

#### `ambientLight2`

``` purescript
ambientLight2 :: P5 -> (Array Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)

#### `ambientLight`

``` purescript
ambientLight :: P5 -> String -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ambientLight)

### Re-exported from P5.LightsAndCamera.Material:

#### `texture`

``` purescript
texture :: P5 -> GraphicsOrImageOrMediaElement -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/texture)

#### `specularMaterial2`

``` purescript
specularMaterial2 :: P5 -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/specularMaterial)

#### `specularMaterial`

``` purescript
specularMaterial :: P5 -> ArrayNumberOrStringOrColor -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/specularMaterial)

#### `shader`

``` purescript
shader :: P5 -> (Maybe Shader) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/shader)

#### `normalMaterial`

``` purescript
normalMaterial :: P5 -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/normalMaterial)

#### `loadShader`

``` purescript
loadShader :: P5 -> (Maybe String) -> (Maybe String) -> Shader
```

[p5js.org documentation](https://p5js.org/reference/#/p5/loadShader)

#### `createShader`

``` purescript
createShader :: P5 -> String -> String -> Shader
```

[p5js.org documentation](https://p5js.org/reference/#/p5/createShader)

#### `ambientMaterial2`

``` purescript
ambientMaterial2 :: P5 -> Number -> (Maybe Number) -> (Maybe Number) -> (Maybe Number) -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ambientMaterial)

#### `ambientMaterial`

``` purescript
ambientMaterial :: P5 -> ArrayNumberOrStringOrColor -> (Effect Unit)
```

[p5js.org documentation](https://p5js.org/reference/#/p5/ambientMaterial)

