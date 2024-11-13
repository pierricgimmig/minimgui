#!/usr/bin/python3

import os
import subprocess

def run_command(command):
    print(f"running command: {command}")
    """Runs a command and returns the output and error."""

    process = subprocess.Popen(command, shell=True, stdout=subprocess.PIPE, stderr=subprocess.PIPE)
    stdout, stderr = process.communicate()

    return stdout.decode(), stderr.decode()

run_command("ls")
print('blah')