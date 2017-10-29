# auto-upgrade-docker

Automatically upgrade Docker for Mac every midnight. Sample usage, as regular user:

```
EDITOR=nano crontab -e
```

Insert:
```
@daily /path/to/auto-upgrade-docker/upgrade.sh edge
```

NB: `sudo` must have `NOPASSWD` setting for your user.
