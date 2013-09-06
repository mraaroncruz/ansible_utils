# Ansible Utils

Scaffold generator for ansible playbooks

## Installation

Install ruby >= v1.9.2

    $ gem install ansible_utils

if using rbenv, don't forget to

    $ rbenv rehash

## Usage

This will install a `playbook` executable to your path (if you have ruby or your ruby version manager set up correctly)

### playbook new

create a new playbook in current, relative or absolute filepath

    # new playbook in not yet created "foo" directory
    $ playbook new foo

you should see the output

      create  foo
      create  foo/dbservers.yml
      create  foo/group_vars/all
      create  foo/group_vars/atlanta
      create  foo/group_vars/webservers
      create  foo/host_vars/db-bos-1.example.com
      create  foo/production
      create  foo/roles/app/files/bar.txt
      create  foo/roles/app/handlers/main.yml
      create  foo/roles/app/tasks/main.yml
      create  foo/roles/app/templates/noop.conf.j2
      create  foo/roles/app/vars/main.yml
      create  foo/roles/common/files/bar.txt
      create  foo/roles/common/handlers/main.yml
      create  foo/roles/common/tasks/main.yml
      create  foo/roles/common/templates/noop.conf.j2
      create  foo/roles/common/vars/main.yml
      create  foo/roles/monitoring/files/bar.txt
      create  foo/roles/monitoring/handlers/main.yml
      create  foo/roles/monitoring/tasks/main.yml
      create  foo/roles/monitoring/templates/noop.conf.j2
      create  foo/roles/monitoring/vars/main.yml
      create  foo/site.yml
      create  foo/staging
      create  foo/webservers.yml

peep around, some of the files are already filled out for n00bz

### playbook role

create a new role scaffold in the current directory's playbook

    # create an nginx role in the ./roles directory
    $ playbook role nginx

you should see the output

    create  roles/nginx
    create  roles/nginx/files/bar.txt
    create  roles/nginx/handlers/main.yml
    create  roles/nginx/tasks/main.yml
    create  roles/nginx/templates/noop.conf.j2
    create  roles/nginx/vars/main.yml



## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
