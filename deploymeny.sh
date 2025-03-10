
---
- name: Create Docker image in server machine using file from node
  hosts: 54.226.245.23
  gather_facts: no
  become: yes

  tasks:
  - name: Copy Dockerfile from node to server machine
    synchronize:
      src: /var/lib/jenkins/workspace
      dest: /home/kittu/project
      mode: pull
