#!/usr/bin/env sh
ORIGINAL_UMASK=`umask`
NEW_UMASK=0077

echo "Original umask: ${ORIGINAL_UMASK}"

# force other flag to become masked out
umask ${NEW_UMASK}
echo "New umask: ${NEW_UMASK}"
ansible-playbook playbook.yml

# reset back the umask
umask $ORIGINAL_UMASK