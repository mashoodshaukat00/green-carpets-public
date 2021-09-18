- DB
  - Package manager
    - `Install-Package Microsoft.EntityFrameworkCore.SqlServer`
    - `Install-Package Microsoft.EntityFrameworkCore.Tools`
    - `Scaffold-DbContext "Server=localhost\SQLSERVER;Database=GreenCarpetsDb;User Id=greenappdbuser;Password=1XsNovYt8CTutCD4yDwj;" Microsoft.EntityFrameworkCore.SqlServer -OutputDir Models`
    - Server=myServerName\myInstanceName;Database=myDataBase;User Id=myUsername;Password=myPassword;
      - ConnectionString formats : 
        - `https://www.connectionstrings.com/sql-server/`

- WebApi

  - ```
    Install-Package AspNetCore.HealthChecks.UI
    Install-Package AspNetCore.HealthChecks.UI.InMemory.Storage
    install-package AspNetcore.HealthChecks.Publisher.ApplicationInsights
    install-package AspNetCore.HealthChecks.Prometheus.Metrics
    ```

    - HealthCheck : 
      - `https://github.com/xabaril/AspNetCore.Diagnostics.HealthChecks#HealthCheckUI`

