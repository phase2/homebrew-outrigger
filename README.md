# Outrigger Homebrew

Homebrew Tap (a.k.a. repository) for Outrigger

## How to use this tap

To get access to all this Tap has to offer, you need to, well, tap it.

  `brew tap phase2/outrigger`

Once tapped, you can use the formula here to install `rig` and the required 
Docker dependencies. 

## To install rig

  `brew install phase2/rig`

This will get you the `rig` binary and includes dependencies on Docker, Docker Compose,
and Docker Machine.

## Upgrading rig

If a new version of `rig` is released you need to do the following to upgrade.

  ```
  brew update
  brew upgrade phase2/rig
  ```

## Troubleshooting

To help troubleshoot your `rig` installation run the following command:

  `rig doctor`
