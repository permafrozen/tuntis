# tuntis
scrapes webuntis and fetches curriculum to display in your terminal

## About

## Todo

- [ ]
- [ ] A
- [ ]
- [ ]

## Dev
In the `home-manager` config add for `direnv`

```nix
      programs.direnv = {
        enable = true;
        enableFishIntegration = true;
        # Optional: silent = true;
      };
```

Add also a shell hook to your shell: https://direnv.net/docs/hook.html

Then also allow the `.envrc` in the cloned repo, run:
```console
direnv allow
```
