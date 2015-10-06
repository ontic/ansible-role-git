# Documentation

## Example

```
git_repository: ppa:git-core/ppa
git_authorize_github: true
git_authorize_bitbucket: true
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
git_repository:
```

The repository to add to APT. Which would allow more recent versions of Git to be installed.

```
git_pkg_version:
```

The Git package version you want to install. If the value is left *undefined* `git_pkg_state` will be used.

```
git_pkg_state: present
```

The desired Git package state, valid values are `latest`, `present` or `absent`.

```
git_authorize_github: false
```

Whether to add GitHub to SSH known hosts, valid values are `true` or `false`.

```
git_authorize_bitbucket: false
```

Whether to add BitBucket to SSH known hosts, valid values are `true` or `false`.

```
git_config: {}
```

The system Git configuration, these values are stored in the file `/etc/gitconfig` which is
the first place Git looks.

```
git_users: []
```

The global Git configuration, these values are stored in the file `~/.gitconfig` which is specific to each user.