
% Title: Tjänster (Services)
% Subtitle: DNS • DHCP • Fileshares • SSH
% Class: EEDAK25
% Date: 260915
<!-- TITLE SLIDE: (insert metadata) -->

<!-- SLIDE: Title is "Tjänster" and below is an Illustration of a tux penguin monitoring a linux Daemon with a magnifying glass -->

<!-- SLIDE: Title: Tjänster - Definition --> 

- Applikationer är program som en användare interagerar med direkt.
- Tjänster eller Services är program som utför en specifik uppgift i bakgrunden utan input från användaren.
- De kan startas och stoppas direkt av användaren men det normala är att använda någon form av hanteringsprogram.
- Denna lektion kommer demonstrera ett urval vanliga bakgrundstjänster i en linuxmiljö. Det man lär sig går att ta med sig till Windows på lektionen imorgon.

<!-- SLIDE: Title: Start och stopp -->

I linux kallas bakgrundsprogram för "Daemons", därav den lilla röda demonen i illustrationen i början.

Dessa startas med `systemctl start <tjänst>` och `systemctl stop <tjänst>`. Motsvarande i Windows är `Start-Service` och `Stop-Service`.

Det finns olika verktyg för att hantera services och vilka som finns beror på Linux distrubution. I Ubuntu Server finns t.ex. 
`service --status-all` för en enkel översikt på system som är igång.

<!-- SLIDE: Title is "4 Vanliga Services" and a subtitle "Och några implementationer i linux" -->

SSH (openssh)
: Ett protokoll för att ansluta sig säkert mot andra datorer.
DHCP (isc-kea, dnsmasq)
: DHCP-servern har en pool med IP-adresser och lånar ut adresser till DHCP-klienter.
DNS (named, dnsmasq)
: Översätter domän namn till IP adresser.
Fileshares (samba, nfs, sftp)
: Tillgängliggör filer lagrade på servern via nätverksprotokoll.