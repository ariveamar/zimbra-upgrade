root@mail:/migration/backup# cat restore-mailbox.sh
#!/bin/bash

BACKUPDIR="/migration/backup/backup-mailbox/290121";

clear

echo "Retrieve all zimbra user name..."

USERS=`su - zimbra -c 'zmprov -l gaa | sort'`;

for ACCOUNT in $USERS; do
NAME=`echo $ACCOUNT`;
echo "Restoring $NAME mailbox..."
su - zimbra -c "zmmailbox -z -m $NAME postRestURL '//?fmt=tgz&resolve=skip' $BACKUPDIR/$NAME.tgz";
done
echo "All mailbox has been restored sucessfully"
root@mail:/migration/backup#
