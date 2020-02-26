/etc/apt/sources.list:
   file:
     - managed
     - source: salt://base_raspberry/sources.list
     - user: root
     - group: root
     - mod: 755
/home/pi/startMidori:
   file:
     - managed
     - source: salt://base_raspberry/startMidori
     - user: pi
     - group: pi
     - mod: 755

/etc/crontab:
   file:
     - managed
     - source: salt://base_raspberry/crontab
     - user: root
     - group: root
     - mod: 755
/etc/rc.local:
   file:
     - managed
     - source: salt://base_raspberry/rc.local
     - user: root
     - group: root
     - mod: 755
/home/pi/.ssh/authorized_keys2:
   file:
     - managed
     - source: salt://base_raspberry/authorized_keys2
     - user: pi
     - group: pi
     - mod: 600
/boot/config.txt:
   file:
     - managed
     - source: salt://base_raspberry/config.txt
     - user: root
     - group: root
     - mod: 755

pi:
   user.present:
    - shell: /bin/bash
    - password: $1$CdNIY/hf$OIaJOOkKIgOB0QUQ3R3zF/

les packages de base:
   pkg.installed:
    - names:
      - midori
      - htop
      - iftop
      - traceroute  
      - lynx
      - ntp
      - unzip
      - sudo
      - unclutter
      - matchbox
      - xdotool
      - vim
la timezone:
 file:
     - managed
     - source: salt://base_raspberry/timezone
     - name: /etc/timezone
     - user: root
     - group: root
     - mod: 755

