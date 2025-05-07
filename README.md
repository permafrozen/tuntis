# tuntis
scrapes webuntis and fetches curriculum to display in your terminal

## About

## Todo

- [X] setup go project with github
- [ ] http request to log into webuntis and save cookies
- [ ] catch http request sent to `nginx` which contains curriculum
- [ ] parse json to usable data
- [ ] use bubbletea for tui
- [ ] add different options for only fetching and printing and tui

## Dev
1. In the `home-manager` config add for `direnv`

```nix
      programs.direnv = {
        enable = true;
        enableFishIntegration = true;
        # Optional: silent = true;
      };
```

2. Add also a shell hook to your shell: [direnv/docs/hook](https://direnv.net/docs/hook.html)

3. Then also allow the `.envrc` in the cloned repo, run:
```console
direnv allow
```
