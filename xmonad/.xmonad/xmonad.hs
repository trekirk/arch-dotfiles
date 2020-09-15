--
-- xmonad example config file for xmonad-0.9
--
-- A template showing all available configuration hooks,
-- and how to override the defaults in your own xmonad.hs conf file.
--
-- Normally, you'd only override those defaults you care about.
--
-- NOTE: Those updating from earlier xmonad versions, who use
-- EwmhDesktops, safeSpawn, WindowGo, or the simple-status-bar
-- setup functions (dzen, xmobar) probably need to change
-- xmonad.hs, please see the notes below, or the following
-- link for more details:
--
-- http://www.haskell.org/haskellwiki/Xmonad/Notable_changes_since_0.8
--

import XMonad

-- Actions
import XMonad.Actions.DynamicProjects
import XMonad.Actions.MouseResize

-- Data
import Data.Monoid
import Data.Monoid

-- Function Keys
import Graphics.X11.ExtraTypes.XF86

-- Hooks
import XMonad.Hooks.ManageDocks
import XMonad.Hooks.DynamicLog

-- Layouts
import XMonad.Layout.GridVariants (Grid(Grid))
import XMonad.Layout.SimplestFloat
import XMonad.Layout.Spiral
import XMonad.Layout.ResizableTile
import XMonad.Layout.Tabbed
import XMonad.Layout.ThreeColumns

--Layout Modifiers
--import XMonad.Layout.Gaps
import XMonad.Layout.LayoutModifier
import XMonad.Layout.LimitWindows (limitWindows, increaseLimit, decreaseLimit)
import XMonad.Layout.Magnifier
import XMonad.Layout.MultiToggle (mkToggle, single, EOT(EOT), (??))
import XMonad.Layout.MultiToggle.Instances (StdTransformers(NBFULL, MIRROR, NOBORDERS))
import XMonad.Layout.NoBorders
import XMonad.Layout.Renamed
import XMonad.Layout.Spacing
import XMonad.Layout.WindowArranger (windowArrange, WindowArrangerMsg(..))
import qualified XMonad.Layout.ToggleLayouts as T (toggleLayouts, ToggleLayout(Toggle))
import qualified XMonad.Layout.MultiToggle as MT (Toggle(..))

-- Utils
import XMonad.Util.Run
import XMonad.Util.SpawnOnce
import XMonad.Util.EZConfig (additionalKeysP)


import System.Exit
import System.IO (hPutStrLn)

import qualified XMonad.StackSet as W
import qualified Data.Map        as M

myFont :: String
myFont = "xft:CodeNewRoman Nerd Font Mono:size=9:antialias=true:hinting=true"
-- Preferred font for the tabbed layout (use pixelsize instead of size to shrink it)
myTabFont :: String
myTabFont = "xft:CodeNewRoman Nerd Font Mono:size=10"

-- The preferred terminal program, which is used in a binding below and by
-- certain contrib modules.
--
myTerminal      = "urxvt"

-- Whether focus follows the mouse pointer.
myFocusFollowsMouse :: Bool
myFocusFollowsMouse = True

-- Width of the window border in pixels.
--
myBorderWidth   = 2

-- modMask lets you specify which modkey you want to use. The default
-- is mod1Mask ("left alt").  You may also consider using mod3Mask
-- ("right alt"), which does not conflict with emacs keybindings. The
-- "windows key" is usually mod4Mask.
--
myModMask       = mod4Mask

-- NOTE: from 0.9.1 on numlock mask is set automatically. The numlockMask
-- setting should be removed from configs.
--
-- You can safely remove this even on earlier xmonad versions unless you
-- need to set it to something other than the default mod2Mask, (e.g. OSX).
--
-- The mask for the numlock key. Numlock status is "masked" from the
-- current modifier status, so the keybindings will work with numlock on or
-- off. You may need to change this on some systems.
--
-- You can find the numlock modifier by running "xmodmap" and looking for a
-- modifier with Num_Lock bound to it:
--
-- > $ xmodmap | grep Num
-- > mod2        Num_Lock (0x4d)
--
-- Set numlockMask = 0 if you don't have a numlock key, or want to treat
-- numlock status separately.
--
-- myNumlockMask   = mod2Mask -- deprecated in xmonad-0.9.1
------------------------------------------------------------

windowCount :: X (Maybe String)
windowCount = gets $ Just . show . length . W.integrate' . W.stack . W.workspace . W.current . windowset

-- Inspired by TopicSpace, DynamicWorkspaces, and WorkspaceDir, DynamicProjects
-- treats workspaces as projects while maintaining compatibility with all
-- existing workspace-related functionality in XMonad.
-- Instead of using generic workspace names such as 3 or work,
-- DynamicProjects allows you to dedicate workspaces to specific projects
-- and then switch between projects easily.
-- A project is made up of a name, working directory, and a start-up hook.
-- When you switch to a workspace, DynamicProjects changes the working directory
-- to the one configured for the matching project. If the workspace
-- doesn't have any windows, the project's start-up hook is executed.

myProjects :: [Project]
myProjects =
  [ Project { projectName      = "\xf120"
            , projectDirectory = "~/"
            , projectStartHook = Just $ do spawn myTerminal
            }
  , Project { projectName      = "\xe007"
            , projectDirectory = "~/Downloads"
            , projectStartHook = Just $ do spawn "firefox"
            }
  , Project { projectName      = "\xf121"
            , projectDirectory = "~/"
            , projectStartHook = Just $ do spawn "code"
            }
  , Project { projectName      = "\xf187"
            , projectDirectory = "~/"
            , projectStartHook = Just $ do spawn "pcmanfm"
            }
  , Project { projectName      = "\xf025"
            , projectDirectory = "~/"
            , projectStartHook = Just $ do spawn "spotify"
            }
  ]

-- The default number of workspaces (virtual screens) and their names.
-- By default we use numeric strings, but any string may be used as a
-- workspace name. The number of workspaces is determined by the length
-- of this list.
--
-- A tagging example:
--
-- > workspaces = ["web", "irc", "code" ] ++ map show [4..9]
--
--Reference: 
-- > workspaces = ["terminal", "browser", "code", "fmanager", "multimedia", "messages", "gaming" ] ++ map show [4..9]

myWorkspaces    = ["\xf120","\xe007","\xf121","\xf187","\xf025","\xf3fe","\xf1b6"]

-- Border colors for unfocused and focused windows, respectively.
--
myNormalBorderColor  = "#dddddd"
myFocusedBorderColor = "#ff79c6"

------------------------------------------------------------------------
-- Key bindings. Add, modify or remove key bindings here.
--
myKeys conf@(XConfig {XMonad.modMask = modm}) = M.fromList $

    -- launch a terminal
    [ ((modm .|. shiftMask, xK_Return), spawn $ XMonad.terminal conf)

    -- launch dmenu
    , ((modm,               xK_p     ), spawn "exe=`dmenu_path | dmenu` && eval \"exec $exe\"")

    -- launch gmrun
    , ((modm .|. shiftMask, xK_p     ), spawn "gmrun")

    -- close focused window
    , ((modm .|. shiftMask, xK_c     ), kill)

     -- Rotate through the available layout algorithms
    , ((modm,               xK_space ), sendMessage NextLayout)

    --  Reset the layouts on the current workspace to default
    , ((modm .|. shiftMask, xK_space ), setLayout $ XMonad.layoutHook conf)

    -- Resize viewed windows to the correct size
    , ((modm,               xK_n     ), refresh)

    -- Move focus to the next window
    , ((modm,               xK_Tab   ), windows W.focusDown)

    -- Move focus to the next window
    , ((modm,               xK_j     ), windows W.focusDown)

    -- Move focus to the previous window
    , ((modm,               xK_k     ), windows W.focusUp  )

    -- Move focus to the master window
    , ((modm,               xK_m     ), windows W.focusMaster  )

    -- Swap the focused window and the master window
    , ((modm,               xK_Return), windows W.swapMaster)

    -- Swap the focused window with the next window
    , ((modm .|. shiftMask, xK_j     ), windows W.swapDown  )

    -- Swap the focused window with the previous window
    , ((modm .|. shiftMask, xK_k     ), windows W.swapUp    )

    -- Shrink the master area
    , ((modm,               xK_h     ), sendMessage Shrink)

    -- Expand the master area
    , ((modm,               xK_l     ), sendMessage Expand)

    -- Push window back into tiling
    , ((modm,               xK_t     ), withFocused $ windows . W.sink)

    -- Increment the number of windows in the master area
    , ((modm              , xK_comma ), sendMessage (IncMasterN 1))

    -- Deincrement the number of windows in the master area
    , ((modm              , xK_period), sendMessage (IncMasterN (-1)))

    -- Toggle the status bar gap
    -- Use this binding with avoidStruts from Hooks.ManageDocks.
    -- See also the statusBar function from Hooks.DynamicLog.
    --
    --, ((modm              , xK_b     ), sendMessage ToggleStruts)

    -- Quit xmonad
    , ((modm .|. shiftMask, xK_q     ), io (exitWith ExitSuccess))

    -- Restart xmonad
    , ((modm              , xK_q     ), spawn "pkill xmobar; xmonad --recompile; xmonad --restart")
    ]

    ++

    -- Multimedia Keys
    -- , ("<XF86AudioPlay>", spawn "cmus toggle")
    -- , ("<XF86AudioPrev>", spawn "cmus prev")
    -- , ("<XF86AudioNext>", spawn "cmus next")
    [ ((0, xF86XK_AudioMute),   spawn "pactl set-sink-mute 0 toggle")  -- Bug prevents amixer it from toggling correctly in 12.04 but with pactl is solved.
    , ((0, xF86XK_AudioLowerVolume), spawn "amixer sset Master 5%-")
    , ((0, xF86XK_AudioRaiseVolume), spawn "amixer sset Master 5%+")
    , ((0, xF86XK_MonBrightnessUp), spawn "xbacklight -inc 10")
    , ((0, xF86XK_MonBrightnessDown), spawn "xbacklight -dec 10")
    -- , ("<XF86HomePage>", spawn "firefox")
    -- , ("<XF86Search>", safeSpawn "firefox" ["https://www.google.com/"])
    -- , ("<XF86Mail>", runOrRaise "geary" (resource =? "thunderbird"))
    -- , ("<XF86Calculator>", runOrRaise "gcalctool" (resource =? "gcalctool"))
    -- , ("<XF86Eject>", spawn "toggleeject")
    -- , ("<Print>", spawn "scrotd 0")
    ]
   
    ++

    --
    -- mod-[1..9], Switch to workspace N
    --
    -- mod-[1..9], Switch to workspace N
    -- mod-shift-[1..9], Move client to workspace N
    --
    [((m .|. modm, k), windows $ f i)
        | (i, k) <- zip (XMonad.workspaces conf) [xK_1 .. xK_9]
        , (f, m) <- [(W.greedyView, 0), (W.shift, shiftMask)]]
    ++

    --
    -- mod-{w,e,r}, Switch to physical/Xinerama screens 1, 2, or 3
    -- mod-shift-{w,e,r}, Move client to screen 1, 2, or 3
    --
    [((m .|. modm, key), screenWorkspace sc >>= flip whenJust (windows . f))
        | (key, sc) <- zip [xK_w, xK_e, xK_r] [0..]
        , (f, m) <- [(W.view, 0), (W.shift, shiftMask)]]


------------------------------------------------------------------------
-- Mouse bindings: default actions bound to mouse events
--
myMouseBindings (XConfig {XMonad.modMask = modm}) = M.fromList $

    -- mod-button1, Set the window to floating mode and move by dragging
    [ ((modm, button1), (\w -> focus w >> mouseMoveWindow w
                                       >> windows W.shiftMaster))

    -- mod-button2, Raise the window to the top of the stack
    , ((modm, button2), (\w -> focus w >> windows W.shiftMaster))

    -- mod-button3, Set the window to floating mode and resize by dragging
    , ((modm, button3), (\w -> focus w >> mouseResizeWindow w
                                       >> windows W.shiftMaster))

    -- you may also bind events to the mouse scroll wheel (button4 and button5)
    ]

------------------------------------------------------------------------
-- Layouts:

-- You can specify and transform your layouts by modifying these values.
-- If you change layout bindings be sure to use 'mod-shift-space' after
-- restarting (with 'mod-q') to reset your layout state to the new
-- defaults, as xmonad preserves your old layout settings by default.
--
-- * NOTE: XMonad.Hooks.EwmhDesktops users must remove the obsolete
-- ewmhDesktopsLayout modifier from layoutHook. It no longer exists.
-- Instead use the 'ewmh' function from that module to modify your
-- defaultConfig as a whole. (See also logHook, handleEventHook, and
-- startupHook ewmh notes.)
--
-- The available layouts.  Note that each layout is separated by |||,
-- which denotes layout choice.
--

-- defaultGapSize = 5 
-- defaultGaps = gaps [(U,defaultGapSize), (R,defaultGapSize), (D, defaultGapSize), (L, defaultGapSize)]
-- defaultSpaces = spacingRaw True (Border 5 5 5 5) True (Border 5 5 5 5) True
-- spacesAndGaps = defaultSpaces . defaultGaps

-- myLayout =      smartBorders . avoidStruts $ spacesAndGaps $ tiled ||| Mirror tiled ||| Full
  -- where
    -- default tiling algorithm partitions the screen into two panes
    -- tiled   = Tall nmaster delta ratio

    -- The default number of windows in the master pane
    -- nmaster = 1

    -- Default proportion of screen occupied by master pane
    -- ratio   = 1/2

    -- Percent of screen to increment by when resizing panes
    -- delta   = 3/100

mySpacing :: Integer -> l a -> XMonad.Layout.LayoutModifier.ModifiedLayout Spacing l a
mySpacing i = spacingRaw False (Border i i i i) True (Border i i i i) True

-- Below is a variation of the above except no borders are applied
-- if fewer than two windows. So a single window has no gaps.
mySpacing' :: Integer -> l a -> XMonad.Layout.LayoutModifier.ModifiedLayout Spacing l a
mySpacing' i = spacingRaw True (Border i i i i) True (Border i i i i) True

-- Defining a bunch of layouts, many that I don't use.
tall     = renamed [Replace "tall"]
           $ limitWindows 12
           $ mySpacing' 8 
           $ ResizableTall 1 (3/100) (1/2) []
magnify  = renamed [Replace "magnify"]
           $ magnifier
           $ limitWindows 12
           $ mySpacing 8
           $ ResizableTall 1 (3/100) (1/2) []
monocle  = renamed [Replace "monocle"]
           $ limitWindows 20 Full
floats   = renamed [Replace "floats"]
           $ limitWindows 20 simplestFloat
grid     = renamed [Replace "grid"]
           $ limitWindows 12
           $ mySpacing' 8
           $ mkToggle (single MIRROR)
           $ Grid (16/10)
fibb     = renamed [Replace "fibb"]
           $ mySpacing' 8
           $ spiral (6/7)
tabs     = renamed [Replace "tabs"]
           -- I cannot add spacing to this layout because it will
           -- add spacing between window and tabs which looks bad.
           $ tabbed shrinkText myTabConfig
  where
    myTabConfig = def { fontName            = myTabFont
                      , activeColor         = "#292d3e"
                      , inactiveColor       = "#3e445e"
                      , activeBorderColor   = "#292d3e"
                      , inactiveBorderColor = "#292d3e"
                      , activeTextColor     = "#ffffff"
                      , inactiveTextColor   = "#d0d0d0"
                      }

-- The layout hook
myLayoutHook = avoidStruts $ mouseResize $ windowArrange $ T.toggleLayouts floats $
               mkToggle (NBFULL ?? NOBORDERS ?? EOT) myDefaultLayout
             where
               -- I've commented out the layouts I don't use.
               myDefaultLayout =     smartBorders $ tall
                                 ||| magnify
                                 ||| monocle
                                 ||| floats
                                 ||| grid
                                 ||| noBorders tabs
                                 ||| fibb
                                 -- ||| threeCol
                                 -- ||| threeRow
------------------------------------------------------------------------
-- Window rules:

-- Execute arbitrary actions and WindowSet manipulations when managing
-- a new window. You can use this to, for example, always float a
-- particular program, or have a client always appear on a particular
-- workspace.
--
-- To find the property name associated with a program, use
-- > xprop | grep WM_CLASS
-- and click on the client you're interested in.
--
-- To match on the WM_NAME, you can use 'title' in the same way that
-- 'className' and 'resource' are used below.
--
myManageHook = composeAll
    [ className =? "MPlayer"        --> doFloat
    , className =? "Gimp"           --> doFloat
    , resource  =? "desktop_window" --> doIgnore
    , resource  =? "kdesktop"       --> doIgnore ]

------------------------------------------------------------------------
-- Event handling

-- Defines a custom handler function for X Events. The function should
-- return (All True) if the default handler is to be run afterwards. To
-- combine event hooks use mappend or mconcat from Data.Monoid.
--
-- * NOTE: EwmhDesktops users should use the 'ewmh' function from
-- XMonad.Hooks.EwmhDesktops to modify their defaultConfig as a whole.
-- It will add EWMH event handling to your custom event hooks by
-- combining them with ewmhDesktopsEventHook.
--
myEventHook = mempty

------------------------------------------------------------------------
-- Status bars and logging

-- Perform an arbitrary action on each internal state change or X event.
-- See the 'XMonad.Hooks.DynamicLog' extension for examples.
--
--
-- * NOTE: EwmhDesktops users should use the 'ewmh' function from
-- XMonad.Hooks.EwmhDesktops to modify their defaultConfig as a whole.
-- It will add EWMH logHook actions to your custom log hook by
-- combining it with ewmhDesktopsLogHook.
--
-- Command to launch the bar
myBar = "xmobar $HOME/.config/xmobar/xmobarrc"

-- Custom PP, configure it as you like. It determines what is being written in the bar.
myPP h = xmobarPP { ppOutput = hPutStrLn h
                , ppCurrent = xmobarColor "#F8F8F2" "#6272a4" . wrap " " " "
                , ppVisible = xmobarColor "#F8F8F2" "#6272a4"  -- Visible but not current workspace (Xinerama)
                , ppHidden = xmobarColor "#FF79C6" "" . wrap "*" " "   -- Hidden workspaces in xmobar
                , ppHiddenNoWindows = xmobarColor "#8BE9FD" "" . wrap " " " "        -- Hidden workspaces (no windows)
                , ppTitle = xmobarColor "#50fa7b" "" . shorten 30     -- Title of active window in xmobar
                , ppSep =  "<fc=#6272a4> | </fc>"          -- Separators in xmobar
                , ppUrgent = xmobarColor "#FFB86C" "" . wrap "!" "!"  -- Urgent workspace
                , ppExtras  = [windowCount]                           -- # of windows current workspace
                , ppOrder  = \(ws:l:t:ex) -> [ws,l]++ex++[t]          
                }

-- -- -- Key binding to toggle the gap for the bar
toggleStrutsKey XConfig {XMonad.modMask = modMask} = (modMask, xK_b)

myLogHook h = dynamicLogWithPP $ myPP h

------------------------------------------------------------------------
-- Startup hook

-- Perform an arbitrary action each time xmonad starts or is restarted
-- with mod-q.  Used by, e.g., XMonad.Layout.PerWorkspace to initialize
-- per-workspace layout choices.
--
-- By default, do nothing.
--
-- * NOTE: EwmhDesktops users should use the 'ewmh' function from
-- XMonad.Hooks.EwmhDesktops to modify their defaultConfig as a whole.
-- It will add initialization of EWMH support to your custom startup
-- hook by combining it with ewmhDesktopsStartup.
--
myStartupHook = do
        spawnOnce "setxkbmap -layout es"
        -- spawnOnce "xbindkeys"
        spawnOnce "~/.fehbg &"


------------------------------------------------------------------------
-- Now run xmonad with all the defaults we set up.

-- Run xmonad with the settings you specify. No need to modify this.
--
-- main = xmonad =<< statusBar myBar myPP toggleStrutsKey defaults
main = do
        xmproc <- spawnPipe myBar 
        xmonad 
            $ dynamicProjects myProjects
            $ docks 
            $ defaults xmproc
-- --  xmonad <=< xmobar $ defaults

-- A structure containing your configuration settings, overriding
-- fields in the default config. Any you don't override, will
-- use the defaults defined in xmonad/XMonad/Config.hs
--
-- No need to modify this.
--
defaults h = defaultConfig {
      -- simple stuff
        terminal           = myTerminal,
        focusFollowsMouse  = myFocusFollowsMouse,
        borderWidth        = myBorderWidth,
        modMask            = myModMask,
        -- numlockMask deprecated in 0.9.1
        -- numlockMask        = myNumlockMask,
        workspaces         = myWorkspaces,
        normalBorderColor  = myNormalBorderColor,
        focusedBorderColor = myFocusedBorderColor,


      -- key bindings
        keys               = myKeys,
        mouseBindings      = myMouseBindings,

      -- hooks, layouts
        layoutHook         = myLayoutHook,
        manageHook         = myManageHook,
        handleEventHook    = myEventHook,
        logHook            = myLogHook h,
        startupHook        = myStartupHook
    }
