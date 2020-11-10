from pssh.clients import ParallelSSHClient

hosts = ['haol3-d28', 'phamt35-d16', 'phamt35-d17']
client = ParallelSSHClient(hosts)

output = client.run_command('date', return_List=True)
for host_output in output:
    for line in host_output.stdout:
        print(line)
