import XMonad

import XMonad.Util.EZConfig
import XMonad.Util.Ungrab

import XMonad.Layout.Spiral

myLayout = tiled ||| Mirror tiled ||| Full ||| spiral (6/7)
  where
    tiled    = Tall nmaster delta ratio
    nmaster  = 1     -- default number of windows in the master pane
    ratio    = 1/2   -- default proportion of screen occupied by master pane
    delta    = 3/100 -- percent of screen to increment by when resizing panes

main :: IO ()
main = xmonad $ def
    { modMask    = mod4Mask -- rebind mod to the super key
    , layoutHook = myLayout -- use custom layouts
    }
  `additionalKeysP`
    [ ("M-S-z", spawn "xscreensaver-command -lock")
    , ("M-<Print>", unGrab *> spawn "scrot -s"    )
    , ("M-]"  , spawn "firefox"                   )
    ]
