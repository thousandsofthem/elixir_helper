defmodule Helper.Common do
  def random_string(len) do
    :crypto.strong_rand_bytes(len) |> Base.url_encode64() |> binary_part(0, len)
  end

  def test? do
    Mix.env() == :test
  end

  def ip_str(conn) do
    to_string(:inet_parse.ntoa(conn.remote_ip))
  end

  def get_ua(conn) do
    ua = Plug.Conn.get_req_header(conn, "user-agent") |> List.first() || ""
    ua_dec = URI.decode(ua)

    if String.valid?(ua_dec), do: ua_dec, else: ua
  end
end
