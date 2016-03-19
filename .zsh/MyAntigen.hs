{-# LANGUAGE OverloadedStrings #-}
module MyAntigen where

import Antigen (
                -- Rudimentary imports
                AntigenConfig (..)
              , defaultConfig
              , bundle
              , antigen
                -- If you want to source a bit trickier plugins
              , ZshPlugin (..)
              , antigenSourcingStrategy
              , filePathsSourcingStrategy
              )

bundles =
  [ bundle "Tarrasch/zsh-functional"
  , bundle "Tarrasch/zsh-bd"

  -- https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins
  , (bundle "robbyrussell/oh-my-zsh")
     { sourcingLocations = [ "plugins/bower"
                           , "plugins/bundler"
                           , "plugins/bower"
                           , "plugins/bundler"
                           , "plugins/cp"
                           , "plugins/dircycle"
                           , "plugins/dirhistory"
                           , "plugins/dirpersist"
                           , "plugins/extract"
                           , "plugins/gem"
                           , "plugins/git-extras"
                           , "plugins/gnu-utils"
                           , "plugins/grunt"
                           , "plugins/history"
                           , "plugins/jump"
                           , "plugins/node"
                           , "plugins/npm"
                           , "plugins/pip"
                           , "plugins/systemadmin"
                           , "plugins/web-search"
                           , "plugins/wp-cli"
                           , "plugins/yum"
                           , "plugins/z"] }

  , bundle "zsh-users/zsh-syntax-highlighting"
  , bundle "zsh-users/zsh-completions"
  , bundle "zsh-users/zsh-autosuggestions"

  -- If you use a plugin that doesn't have a *.plugin.zsh file. You can set a
  -- more liberal sourcing strategy.
  --
  -- , (bundle "some/stupid-plugin") { sourcingStrategy = antigenSourcingStrategy }

  -- If you use a plugin that has sub-plugins. You can specify that as well
  --
  -- NOTE: If you want to use oh-my-zsh for real (please don't), you still need
  -- to set the $ZSH env var manually.
  -- , (bundle "robbyrussell/oh-my-zsh")
  --    { sourcingLocations = [ "plugins/wd"
  --                          , "plugins/colorize"] }

  -- Sourcing a list of files
  -- , (bundle "alfredodeza/zsh-plugins")
  --    { sourcingStrategy = filePathsSourcingStrategy
  --                          [ "vi/zle_vi_visual.zsh"
  --                          , "pytest/pytest.plugin.zsh"
  --                          ] }

  -- Alternatively, this way will give you the same result
  -- , (bundle "alfredodeza/zsh-plugins")
  --    { sourcingStrategy = antigenSourcingStrategy
  --    , sourcingLocations = [ "vi"
  --                          , "pytest"
  --                          ] }

  -- vvv    Add your plugins here    vvv
  ]

config = defaultConfig { plugins = bundles }

main :: IO ()
main = antigen config