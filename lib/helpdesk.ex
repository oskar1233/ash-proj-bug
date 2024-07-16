defmodule Helpdesk do
  @moduledoc """
  Documentation for `Helpdesk`.
  """

  def test do
    {:ok, ticket} = Ash.create(Helpdesk.Support.Ticket, %{subject: "test"})

    {:ok, updated_ticket} =
      ticket
      |> Ash.Changeset.for_update(:update, %{"subject" => "updated sub"})
      |> Ash.Changeset.after_action(fn _, _ ->
        raise "Fail"
      end)
      |> Ash.update()

    updated_ticket
  end
end
