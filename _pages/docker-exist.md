---
layout: page
title: Docker & Exist
permalink: /docker-exist/
---

* Für ediarum.BASE, ediarum.WEB sowie für den TEI Publisher ist die Installation von eXist-db erforderlich. Da wir für ediarum eine ältere Version (5.2.0) nutzen müssen, für den TEI Publisher jedoch die aktuellste Version (6.2.0 - Stand Mai 2023) verwenden wollen, installieren wir zuerst Docker Desktop. Durch die Containerisierung - also das Verpacken von Softwarecode in Pakete, in denen sämtliche Komponenten wie Libraries, Frameworks sowie andere Abhängigkeiten enthalten sind - ist es möglich, dass diese beiden Versionen isoliert voneinander sind und somit problemlos "nebeneinander" laufen können.

* Für unseren Rechner mit Windows 10 als Betriebssystem laden wir zuerst [Docker Desktop](https://www.docker.com/products/docker-desktop/) (Version 4.18.0) herunter und installieren es. Es kann eventuell erforderlich sein, sich nach der Installation einmal abzumelden oder einen Neustart durchzuführen. Danach öffnen wir Docker Desktop und warten bis sich der Docker Engine gestartet hat.
    {% include image.html url="../data/pipelines/pipeline_1/ediarum/img/start-docker-engine.PNG" description="Docker Engine starten" %}

## ediarum

* Wenn wir Docker Desktop installiert haben, öffnen wir im nächsten Schritt unser Terminal und installieren uns unsere lokale eXist-db mit dem Befehl:
    ```terminal
    docker pull existdb/existdb:5.2.0
    ```
    → Auch wenn ediarum bis zur Version 5.3.1 kompatibel ist, haben wir uns für 5.2.0 entschieden, um mit einer stabilen Version zu arbeiten.
* Nach dem Pull-Vorgang müssen wir nun die eXist-db noch unter Angabe des Ports (8080:8080 für unseren Localhost) ausführen, indem wir folgende Eingabe in unserem Terminal machen:
    ```terminal
    docker run -it -d -p 8080:8080 -p 8443:8443 --name exist existdb/existdb:5.2.0
    ```
* Wenn wir nun Docker Desktop erneut öffnen, finden wir dort einen exist-Container.
    {% include image.html url="../data/pipelines/pipeline_1/ediarum/img/docker-existdb.PNG" description="eXist-db in Docker Desktop" %}
* Mit einem Klick auf den Localhost-Port (8080:8080) öffnet sich eXist im Browser.
    {% include image.html url="../data/pipelines/pipeline_1/ediarum/img/existdb-dashboard.PNG" description="eXist im Browser" %}

* Im Dashboard können wir uns nun als "admin" ohne Passwort-Eingabe anmelden.
    {% include image.html url="../data/pipelines/pipeline_1/ediarum/img/existdb-login.PNG" description="Dashboard von eXist im Browser" %}


## TEI Publisher

* Für den TEI Publisher legen wir einen (weiteren) eigenen Container in Docker Desktop an. Dafür geben wir folgenden Befehl in das Terminal unseres Rechners ein:
    ```terminal
    docker pull existdb/teipublisher:8.0.0
    ```
* Sobald der Download des Docker Images für den TEI Publisher abgeschlossen ist, starten wir den Container vom Terminal aus:
    ```terminal
    docker run -p 8081:8080 -p 8444:8443 --name teipublisher -v exist-data:/exist/data existdb/teipublisher:8.0.0
    ```
    → Mit der Spezifikation `-v exist-data:/exist/data` stellen wir sicher, dass Docker ein Volume erstellt, um die Datenbank zu speichern, sodass wir beim Löschen oder Aktualisieren des TEI-Publisher-Containers nicht auch unsere Daten verlieren.
* Wenn wir Docker Desktop öffnen, sollten wir jetzt einerseits unter <strong>Containers</strong> (zusätzlich zum bereits angelegten exist-Container) einen Container für den TEI Publisher vorfinden.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/docker-teipublisher-container.PNG" description="TEI-Publisher-Container in Docker Desktop" %}
    Außerdem sollte unter <strong>Volumes</strong> auch das Volume "exist-data" vorhanden sein.
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/docker-existdata-volume.PNG" description="TEI-Publisher-Container in Docker Desktop" %}
    Nach einem Klick auf exist-data finden wir im Reiter <strong>Data</strong> auch eine Ordnerstrutkur vor, in der die Daten der eXist-Datenbank gespeichert werden. 
    {% include image.html url="../data/pipelines/pipeline_1/teipublisher/img/docker-existdata-data.PNG" description="In Docker gespeicherte Daten der eXist-Datenbank" %}

## ediarum.WEB

* Nach der Installation von Docker Desktop müssen wir noch ein Docker-Image von eXist-db installieren. ediarum.WEB wurde mit den eXist-db-Versionen 3.2.0, 4.6.1 und 5.2.0 getestet. Wir entscheiden uns dafür, die aktuellste dieser Version
zu installieren und führen dazu folgenden Befehl im Terminal aus:
    ```terminal
    docker pull existdb/existdb:5.2.0
    ```
* Nach Abschluss des Pull-Vorgangs legen wir über das Terminal unter Angabe des des Ports (8080:8080 für unseren Localhost) und eines Namens (ediarum_web) den eXist-db-Container an:
   ```terminal
    docker run -it -d -p 8080:8080 -p 8443:8443 --name ediarum_web existdb/existdb:5.2.0
    ```
* Wenn wir nun Docker Desktop  öffnen, finden wir dort einen eXist-db-Container mit dem Namen "ediarum_web".
    {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/eXist.PNG" description="eXist-db in Docker Desktop" %}
* Mit einem Klick auf den Localhost-Port (8080:8080) öffnet sich eXist-bd nun im Browser.
    {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/existdb-dashboard.PNG" description="eXist im Browser" %}    
* Im Dashboard können wir uns nun als "admin" ohne Passwort-Eingabe anmelden.
    {% include image.html url="../data/pipelines/pipeline_2/ediarum_web/img/existdb-dashboard.PNG" description="Dashboard von eXist im Browser" %}
