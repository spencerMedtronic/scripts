import sys
import os

hosts = sys.argv(1)
username = "vagrant"
password = "fnJMM(JWm0TetkQ"
port = "22"
command = "hostname"

for server in hosts:
    ssh = paramiko.SSHClient()
    ssh.set_missing_host_key_policy(paramiko.AutoAddPolicy())
    ssh.connect(server, port, username, password)

    stdin, stdout, stderr = ssh.exec_command(command)
    lines = stdout.readlines()

print(lines)
