# DIGITAL@School Notebook Image

**DIES IST EINE BETA-VERSION.**
Bevor diese Version aktiviert wird, sollte die alte Version mittels `sudo ostree admin pin 0` gesichert werden, damit man jederzeit zurück in die aktuelle Version booten kann (siehe dazu auch die Dokumentation der Fedora Atomic Spins).

Update auf diese Version kann mittels Punkt 2 aus der Installationsanleitung durchgeführt werden.

## Installation

1. Lade Fedora Silverblue (oder ein anderes Fedora Atomic) Installationsmedium von [hier](https://getfedora.org) herunter und folge der Installationsanleitung.
   Verwende den vereinbarten Benutzernamen und Passwort.
   Sprache auf Deutsch und Zeitzone auf Europe/Berlin stellen.
2. Wenn die Installation abgeschlossen ist, nach dem neustarten ein Terminal-Fenster öffnen.
   Dort `rpm-ostree rebase ostree-unverified-registry:ghcr.io/matthiaskr/dasi-ublue:pr-8` ausführen.
   Nachdem das Kommando abgeschlossen ist, den Rechner neustarten.
   Der Computer muss mit dem Internet verbunden sein, um das Kommando erfolgreich auszuführen.

Danach ist das System aufgesetzt.
Zusätzliche Programme werden automatisch nach dem Neustart installiert (nach einer kleinen Pause).
Möchte man dies beschleunigen, kann man **nach dem Neustart** in einem Terminal einfach `dasi-update` ausführen.

## Update des Systems

Das System sucht regelmäßig nach Updates, sofern eine Netzwerkverbindung existiert.
Möchte man sicherstellen, dass die Version auf einem Notebook aktuell ist, kann man wie folgt vorgehen:

1. `rpm-ostree update` in einem Terminal ausführen.
2. Computer neustarten.
3. `dasi-update` in einem Terminal ausführen.

## Bekannte Probleme

* Manchmal funktioniert der erste Login nicht und man kommt direkt zur Login-Maske zurück.
  In diesem Fall einfach erneut einloggen.
  Der zweite Versuch sollte funktionieren.
* Datenträger werden nicht automatisch eingebunden.
  Das gilt **auch für Calliope**.
  Wenn man das KI-Rennspiel verwendet, sollte man immer den Dateimanager offen haben.
  Bevor man einen Calliope neuprogrammiert, klickt man einfach einmal auf den Datenträger mit Namen *MINI*.
  Dadurch wird er eingehängt und die Rennspiel-GUI ist in der Lage den Calliope zu programmieren.
