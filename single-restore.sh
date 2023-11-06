root@mail:/migration/backup# cat restore-mailbox_individual.sh
#!/bin/bash
NAME='puspa.cendekiawati'
DIR='/migration/backup/backup-mailbox/290121'
su - zimbra -c "zmmailbox -z -m $NAME postRestURL '//?fmt=tgz&resolve=skip' $DIR/$NAME@insw.go.id.tgz"
root@mail:/migration/backup#
