FROM zabbix/zabbix-web-apache-mysql:ubuntu-3.2-latest
RUN apt-get update && \
        apt-get -y install fonts-ipafont && \
        update-alternatives --install /usr/share/zabbix/fonts/graphfont.ttf zabbix-frontend-font /usr/share/fonts/opentype/ipafont-gothic/ipagp.ttf 50 && \
        update-alternatives --set zabbix-frontend-font /usr/share/fonts/opentype/ipafont-gothic/ipagp.ttf
