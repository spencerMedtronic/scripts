from pssh.clients import ParallelSSHClient

client = ParallelSSHClient(['haol3-d28', 'phamt35-d16', 'phamt35-d17'])
output = client.run_command('uname')
for host_out in output:
    for line in host_out.stdout:
        print(line)
    exit_code = host_out.exit_code
