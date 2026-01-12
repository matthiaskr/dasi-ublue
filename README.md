# DIGITAL@School Notebook Image

## Änderungen

* **Unreleased**
  * Calliope-Rennspiel wird unter Benutzer "Schüler" installiert
    (die Benutzer müssen dazu mittels `dasi-reset-users` resettet werden).

* **2026-01-11**
  * Möglichkeit Benutzer zu resetten (siehe unten; das Calliope-Rennspiel wird
    für den Administrator installiert).

* **2026-01-10**
  * Update der Basis auf Fedora Kionite 43.
  * Einfacher wechsel zwischen stabiler Version und der Entwicklungsversion
    (siehe unten).

* **2025-10-01**
  * Manuell installierte Software wird automatisch gelöscht (siehe auch unten).
  * Alle Zusatzsoftware wird aus dem *flathub* Repository installiert.

## Installation

1. Lade Fedora Silverblue (oder ein anderes Fedora Atomic) Installationsmedium von [hier](https://getfedora.org) herunter und folge der Installationsanleitung.
   Verwende einen beliebigen Benutzernamen und Passwort (wird später resettet).
   Sprache auf Deutsch und Zeitzone auf Europe/Berlin stellen.
   Benutzer und Systemsprache werden erst nach dem ersten Neustart gesetzt.
2. Wenn die Installation abgeschlossen ist: öffne ein Terminal-Fenster
   (Konsole bei Kionite).
   Der Computer muss mit dem Internet verbunden sein, um forzufahren.
   Dort
```shell
touch /var/tmp/reset-users
rpm-ostree rebase ostree-unverified-registry:ghcr.io/matthiaskr/dasi-ublue:main -r
```
   eingeben und ausführen.
   Der Computer startet automatisch neu, wenn dies erfolgreich durchgeführt
   wurde.
3. Danach ist das System fast einsatzbereit: es müssen nurnoch Zusatzpakete
   (flatpak) instaliert werden.
   Dies geschieht automatisch, sofern der Computer mit dem Internet verbunden
   ist.
   Alternativ kann den Vorgang durch `sudo dasi-update` beschleunigen (in einem
   Terminal/Konsole).

## Bekannte Probleme

* Manchmal funktioniert der erste Login nicht und man kommt direkt zur Login-Maske zurück.
  In diesem Fall einfach erneut einloggen.
  Der zweite Versuch sollte funktionieren.
* Datenträger werden nicht automatisch eingebunden.
  Das gilt **auch für Calliope**.
  Wenn man das KI-Rennspiel verwendet, sollte man immer den Dateimanager offen haben.
  Bevor man einen Calliope neuprogrammiert, klickt man einfach einmal auf den Datenträger mit Namen *MINI*.
  Dadurch wird er eingehängt und die Rennspiel-GUI ist in der Lage den Calliope zu programmieren.
* Aus dem Home-Verzeichnis sollte vor jedem Rennspiel-Workshop das Verzeichnis
  `CalliopeRennspiel` gelöscht werden.  Dies ist auch bei Installationen vor
  05.06.2025 notwendig, um alte inkompatibele Konfiguration zu entfernen.

## Zusätzliche Möglichkeiten

Alle folgenden Aktionen müssen mit dem Administrator ausgeführt werden.

### Reset der Benutzer

Mittels `dasi-reset-users` wird das System zum Reset der Benutzer angewiesen.
Beim nächsten Neustart werden alle Benutzer gelöscht und mit den Standardpasswörtern neu angelegt.

### Update des Systems

Das System sucht regelmäßig nach Updates, sofern eine Netzwerkverbindung existiert.
Möchte man sicherstellen, dass die Version auf einem Notebook aktuell ist, kann man wie folgt vorgehen:

1. `rpm-ostree update -r` in einem Terminal ausführen (der Computer startet nach dem Update automatisch neu).
2. `sudo dasi-update` in einem Terminal ausführen.

### Selber Software installieren

Software ann von [*flathub*](https://flathub.org) installiert werden.
Dazu muss erst einmal das System konfiguriert werden, dass manuell installiere
Software nicht automatisch wieder entfernt wird.
Dazu

1. ein Terminal-Fenster öffnen (Konsole) und
2. `dasi-suspend-removal` ausführen.

Damit wird das automatische Löschen von manuell installierten Paketen für 30 Tage verhindert.
Das System kann vorzeitig mittels `dasi-enable-removal` wieder in den ursprünglichen Zustand versetzt werden.

Nach dem `dasi-suspend-removal` ausgeführt wurde, können Softwarepakete von
[*flathub*](https://flathub.org) installiert werden.
Dazu einfach der Anleitung auf der Webseite folgen.
Dabei bitte die Dokumentation insbesondere zur Vertrauenswürdigkeit einzelner Pakete beachten.

### git-branches

* `main`: aktuelles stabiles System
* `next`: aktuelle Entwicklung

Um zwischen beiden einfach wechseln zu können, muss eine Version nach
10.01.2026 installiert sein.
Dazu einfach `rpm-ostree upgrade -r` ausführen.
Das System startet automatisch neu und ist danach auf dem aktuellen Stand.

### Wechsel von `main` zu `next`:
* die Datei `/etc/dasi-tag` anlegen und dort `next` eintragen (einfache Textdatei)
* `sudo dasi-repocheck` ausführen und danach das System neu starten

### Wechsel von `next` zu `main`:
* die Datei `/etc/dasi-tag` löschen oder dort `main` eintragen
* `sudo dasi-repocheck` ausführen und danach das System neu starten

## Legales

THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR
IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A
PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL JCRAFT,
INC. OR ANY CONTRIBUTORS TO THIS SOFTWARE BE LIABLE FOR ANY
DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,
PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED
AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT
LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
