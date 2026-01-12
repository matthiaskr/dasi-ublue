# DIGITAL@School Notebook Image

## Änderungen

* **2026-01-10**
  * Update der Basis auf Fedora Kionite 43.
  * Einfacher wechsel zwischen stabiler Version und der Entwicklungsversion
    (siehe unten).

* **2025-10-01**
  * Manuell installierte Software wird automatisch gelöscht (siehe auch unten).
  * Alle Zusatzsoftware wird aus dem *flathub* Repository installiert.

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

## Selber Software installieren

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

## git-branches

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
