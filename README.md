# DIGITAL@School Notebook Image

## Installation

1. Lade Fedora Silverblue (oder ein anderes Fedora Atomic) Installationsmedium von [hier](https://getfedora.org) herunter und folge der Installationsanleitung.
   Verwende den vereinbarten Benutzernamen und Passwort.
   Sprache auf Deutsch und Zeitzone auf Europe/Berlin stellen.
2. Wenn die Installation abgeschlossen ist, nach dem neustarten ein Terminal-Fenster öffnen.
   Dort `rpm-ostree rebase ostree-unverified-registry:ghcr.io/matthiaskr/dasi-ublue:latest` ausführen.
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
