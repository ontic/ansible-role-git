# Documentation

## Example

```
git_ppa: ppa:git-core/ppa
git_authorize_github: yes
git_authorize_bitbucket: yes
git_config:
  core:
    autocrlf: false
  color:
    branch: auto
    diff: auto
    interactive: auto
    status: auto
  push:
    default: matching
git_users:
  - username: vagrant
    group: vagrant
    mode: 0644
    git_config:
      user:
        name: John Doe
        email: john.doe@gmail.com
      github:
        user: johndoe
```

## Role Variables

Available variables are listed below, along with default values (see [defaults/main.yml](/defaults/main.yml)):

```
git_ppa:
```

The launchpad PPA to add to APT. Which would allow a non-official package of Git to be installed.

```
git_packages:
```

A list of the Git packages to install. Each package supports all parameters from the
[apt](http://docs.ansible.com/ansible/apt_module.html) or [yum](http://docs.ansible.com/ansible/yum_module.html) modules.
If the value remains omitted, the following packages will be installed by default.

| Debian/Ubuntu          | RedHat/CentOS           |
| :--------------------- | :---------------------- |
| git                    | git                     |

```
git_authorize_github:
```

Whether to add GitHub to SSH known hosts, valid values are `yes` or `no`.

```
git_authorize_bitbucket:
```

Whether to add BitBucket to SSH known hosts, valid values are `yes` or `no`.

```
git_config:
```

The system Git configuration, these values are stored in the file `/etc/gitconfig` which is
the first place Git looks.

```
git_users:
```

The global Git configuration, these values are stored in the file `~/.gitconfig` which is specific to each user.