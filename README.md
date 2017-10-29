# auto-upgrade-docker

Automatically upgrade Docker for Mac every midnight. Sample usage, as regular user:

```
EDITOR=nano crontab -e
```

Insert:
```
@daily /path/to/auto-upgrade-docker/upgrade.sh edge
```

You can replace `edge` with `stable` if you want to install the stable version of Docker for Mac.

NB: `sudo` must have `NOPASSWD` setting for your user.
