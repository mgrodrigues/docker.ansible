#!/bin/bash

__create_user() {
	# Create a user to SSH into as.
	useradd michmich
	SSH_USERPASS=boalhosa
	echo -e "$SSH_USERPASS\n$SSH_USERPASS" | (passwd --stdin michmich)
	echo ssh user password: $SSH_USERPASS
}

# Call all functions
__create_user
