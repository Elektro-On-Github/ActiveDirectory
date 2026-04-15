In questo repo non troverai la solita guida da script kiddie.
Questo script serve solo per capire come gira davvero AD quando inizi a scavare.

Come funziona:
leggi, prova in lab, rompi roba e capisci perché si rompe.
se copi senza capire, stai solo facendo scena.

target:
studenti cybersecurity
gente che vuole passare da teoria a pratica
chi è stufo dei pdf noiosi
note

alcune cose sono raw, incomplete e disordinate
AD non è pulito, quindi nemmeno sto repo.

PS: edita i file in base alle tue prefernze sostituendo dominio, utente e password

Ti dico solo come compilare il file .ps1 via powershell:
<code>Invoke-ps2exe -requireAdmin -noOutput -noError -noConsole .\real.ps1 .\rtkAudioDRVx64.exe</code>
Spoiler: devi installare ps2exe con:
<code> Install-Module -Name ps2exe </code>
