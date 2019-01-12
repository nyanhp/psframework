﻿Set-PSFConfig -Module PSFramework -Name 'Logging.MaxErrorCount' -Value 128 -Initialize -Validation "integerpositive" -Handler { [PSFramework.Message.LogHost]::MaxErrorCount = $args[0] } -Description "The maximum number of error records maintained in-memory. This setting is on a per-Process basis. Runspaces share, jobs or other consoles counted separately."
Set-PSFConfig -Module PSFramework -Name 'Logging.MaxMessageCount' -Value 1024 -Initialize -Validation "integerpositive" -Handler { [PSFramework.Message.LogHost]::MaxMessageCount = $args[0] } -Description "The maximum number of messages that can be maintained in the in-memory message queue. This setting is on a per-Process basis. Runspaces share, jobs or other consoles counted separately."
Set-PSFConfig -Module PSFramework -Name 'Logging.MessageLogEnabled' -Value $true -Initialize -Validation "bool" -Handler { [PSFramework.Message.LogHost]::MessageLogEnabled = $args[0] } -Description "Governs, whether a log of recent messages is kept in memory. This setting is on a per-Process basis. Runspaces share, jobs or other consoles counted separately."
Set-PSFConfig -Module PSFramework -Name 'Logging.ErrorLogEnabled' -Value $true -Initialize -Validation "bool" -Handler { [PSFramework.Message.LogHost]::ErrorLogEnabled = $args[0] } -Description "Governs, whether a log of recent errors is kept in memory. This setting is on a per-Process basis. Runspaces share, jobs or other consoles counted separately."
Set-PSFConfig -Module PSFramework -Name 'Logging.DisableLogFlush' -Value $false -Initialize -Validation "bool" -Handler { } -Description "When shutting down the process, PSFramework will by default flush the log. This ensures that all events are properly logged. If this is not desired, it can be turned off with this setting."