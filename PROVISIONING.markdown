# Setting Up a Server

So you're the lucky devops person :construction:! Dope. Follow these steps to deploy
new configuration for GoodForPoc.

## Steps

```shell
$ cd infra/ansible
$ ansible-galaxy install -r galaxy.yml
$ ansible-playbook install -i hosts -u deploy -b
```

That'd be it! Diagnose any errors you find via Ansible and run those steps again.
In order to run this as the `deploy` user, you'd need to request that access from
the admins.
