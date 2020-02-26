liste des urls:
   file:
     - managed
     - source: salt://base_raspberry/url_etage-droit.txt
     - name: /home/pi/url.txt
     - user: pi
     - group: pi
     - mode: 550
#tests:
#   file:
#     - managed
#     - source: salt://base_raspberry/startMidori_etage_droit
#     - name: /home/pi/startMidori
#     - user: pi
#     - group: pi
#     - mode: 644
#
