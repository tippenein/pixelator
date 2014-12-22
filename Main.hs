
import System.Environment (getArgs)

import Vision.Image

-- pixelates the input image to an outlined version

-- usage: ./pixelator input.png output.png
main :: IO ()
main = do
  [input, output] <- getArgs

  -- Loads the image. Automatically infers the format.
  io <- load Nothing input

  case io of
    Left _err -> putStrLn "Error while reading the image."
    Right img -> do
      -- Convert the StorageImage (which can be Grey, RGB or RGBA) to RGB

      -- Resizes the RGB image to 250x250 pixels.
      -- pixelated = pixelate rgb :: RGB
      --   where rgb = convert img :: RGB

      -- Saves the pixelated image. Ignores any runtime error.
      -- _ <- save output pixelated
      return ()

pixelate = undefined
