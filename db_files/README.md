A good way to organize changelogs and changesets:

```
\---liquibase
    |   changelog.xml
    |   procedures.xml
    |   
    +---procedures
            procedure_one.sql
            procedure_two.sql
```

`changelog.xml` simply includes `procedures.xml` and inside procedures.xml we can store all change sets.
The same folder structure can be repeated for views, tables etc.

As for the content inside procedures.xml, we can code the equivalent of
```
<changeSet author="arthur" id="1" runOnChange="true" runInTransaction="true">
    <sqlFile path="procedures/procedure_one.sql"
             encoding="UTF-8"
             relativeToChangelogFile="true"
             endDelimiter=";"
             splitStatements="true"/>

</changeSet>
```
