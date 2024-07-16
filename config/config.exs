import Config

config :helpdesk, ash_domains: [Helpdesk.Support], ecto_repos: [Helpdesk.Repo]

config :spark,
  formatter: [
    remove_parens?: true,
    "Ash.Resource": [
      section_order: [
        :resource,
        :code_interface,
        :actions,
        :policies,
        :pub_sub,
        :preparations,
        :changes,
        :validations,
        :multitenancy,
        :attributes,
        :relationships,
        :calculations,
        :aggregates,
        :identities
      ]
    ],
    "Ash.Domain": [section_order: [:resources, :policies, :authorization, :domain, :execution]]
  ]

config :helpdesk, Helpdesk.Repo,
  socket_dir: nil,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  port: 7432,
  database: "helpdesk_dev",
  stacktrace: true,
  show_sensitive_data_on_connection_error: true,
  pool_size: 10

