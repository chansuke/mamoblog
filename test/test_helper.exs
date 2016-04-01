ExUnit.start

Mix.Task.run "ecto.create", ~w(-r Mamoblog.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r Mamoblog.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(Mamoblog.Repo)

