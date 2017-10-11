# Salt issue 44035

* https://github.com/saltstack/salt/issues/44035

## Reproduce

Build and run in one terminal:

```
docker build -t wtf .
docker run --rm -it -v /sys/fs/cgroup:/sys/fs/cgroup:ro --privileged --name wtf wtf
```

Highstate once systemd prompts for login:

```
docker exec -i wtf salt-call --local --log-level info state.apply
```

To tear down:

```
docker rm -fv wtf
```

It's important to have systemd running in a container, otherwise issue
does not reproduce. I haven't seen the issue in production, only in dev
where systemd and salt are running in a container (I use Docker for Mac).
