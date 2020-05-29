ThirdPartyNotices
-----------------
corona-warn-app/cwa-server uses third-party software or other resources that
may be distributed under licenses different from corona-warn-app/cwa-server
software.
In the event that we overlooked to list a required notice, please bring this
to our attention by contacting us via this email:
corona-warn-app.opensource@sap.com

This file can be regenerated at any time by simply running:

    mvn clean license:aggregate-add-third-party

Components (auto-generated on ${.now?date?iso_utc} with License Maven Plugin):
----------

<#function artifactFormat p,l>
    <#assign result = ""/>
    <#assign result = result + "Component: " + p.name + " (" + p.groupId + ":" + p.artifactId + ")\n"/>
    <#assign result = result + "Website:   " + p.url + "\n"/>
    <#assign result = result + "License:   "/>
    <#list l as license>
        <#assign result = result + license + " "/>
    </#list>
    <#assign result = result + "\n"/>
    <#return result/>
</#function>

<#-- To render the third-party file.
Available context :

- dependencyMap a collection of Map.Entry with
  key are dependencies (as a MavenProject) (from the maven project)
  values are licenses of each dependency (array of string)

- licenseMap a collection of Map.Entry with
  key are licenses of each dependency (array of string)
  values are all dependencies using this license
-->
<#if dependencyMap?size == 0>
The project has no dependencies.
<#else>
    <#list dependencyMap as e>
        <#assign project = e.getKey()/>
        <#assign licenses = e.getValue()/>
${artifactFormat(project,licenses)}
    </#list>
</#if>
Components (manual):
----------

Component: Maven
Licensor:  Apache Software Foundation
Website:   https://maven.apache.org/
License:   Apache License 2.0

Component: MojoHaus Flatten Maven Plugin
Licensor:  MojoHaus
Website:   https://www.mojohaus.org/flatten-maven-plugin/
License:   Apache License 2.0

Component: wait-for-it
Licensor:  Giles Hall
Website:   https://github.com/vishnubob/wait-for-it
License:   MIT License

Component: Zenko CloudServer
Licensor:  Zenko
Website:   https://github.com/scality/cloudserver
License:   Apache License 2.0
