defmodule Helpdesk.Support.Ticket do
  use Ash.Resource,
    otp_app: :helpdesk,
    domain: Helpdesk.Support,
    data_layer: AshPostgres.DataLayer

  postgres do
    table "tickets"
    repo Helpdesk.Repo
  end

  actions do
    defaults [:read]
    default_accept [:subject]

    create :create do
      primary? true
    end

    update :update
  end

  attributes do
    uuid_primary_key :id

    attribute :subject, :string do
      allow_nil? false
      public? true
    end
  end
end
