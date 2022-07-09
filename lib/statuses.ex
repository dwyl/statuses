defmodule Statuses do
  @moduledoc """
  The `Statuses` module create a list of
  statuses to be used in Elixir projects
  """

  @doc """
  Returns list of the statuses
  """
  @spec get_statuses() :: list(Status.t())
  def get_statuses() do
    [
      %Status{
        code: 1,
        desc:
          "A person verified by a 3rd party OAuth provider or by confirming their email address",
        text: :verified
      },
      %Status{
        code: 2,
        desc: "All items are uncategorized when they are first created. (Yes, US spelling)",
        text: :uncategorized
      },
      %Status{
        code: 3,
        desc: "An App, Item or Person can be active; this is the default state for an App",
        text: :active
      },
      %Status{
        code: 4,
        desc: "Items marked as done are complete", 
        text: :done
      },
      %Status{
        code: 5,
        desc: "A flagged App, Item or Person requires admin attention",
        text: :flagged
      },
      %Status{
        code: 6,
        desc:
          "Soft-deleted items that no longer appear in UI but are kept for audit trail purposes",
        text: :deleted
      },
      %Status{
        code: 7,
        desc: "When an email or item is ready to be started/sent is still pending",
        text: :pending
      },
      %Status{
        code: 8,
        desc: "An email that has been sent but not yet opened",
        text: :sent
      },
      %Status{
        code: 9, 
        desc: "When an email is opened by the recipient", 
        text: :opened
      },
      %Status{
        code: 10,
        desc: "Temporary email bounce e.g. because inbox is full",
        text: :bounce_transient
      },
      %Status{
        code: 11,
        desc: "Permanent email bounce e.g. when inbox doesn't exist",
        text: :bounce_permanent
      },
      %Status{
        code: 200, 
        desc: "successful HTTP request", 
        text: :ok
      },
      %Status{
        code: 307,
        desc: "the request should be repeated with another URI",
        text: :temporary_redirect
      },
      %Status{
        code: 308,
        desc: "all future requests should be directed to the given URI",
        text: :permanent_redirect
      },
      %Status{
        code: 400,
        desc: "server cannot or will not process the request due to an apparent client error",
        text: :bad_request
      },
      %Status{
        code: 401,
        desc: "when authentication is required and has failed",
        text: :unauthorized
      },
      %Status{
        code: 403, 
        desc: "request forbidden", 
        text: :forbidden
      },
      %Status{
        code: 404, 
        desc: "requested resource could not be found",
        text: :not_found
      },
      %Status{
        code: 429,
        desc: "has sent too many requests in a given amount of time",
        text: :too_many_requests
      },
      %Status{
        code: 500,
        desc: "an unexpected condition was encountered",
        text: :internal_server_error
      }
    ]
  end
end
