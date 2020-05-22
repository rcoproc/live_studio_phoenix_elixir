defmodule LiveViewStudioWeb.SalesDashboardLive do
  use LiveViewStudioWeb, :live_view

  alias LiveViewStudio.Sales

  def mount(_params, _session, socket) do
    socket = 
      socket
      |> assign_stats()
      |> assign(refresh: 5)

    if connected?(socket), do: schedule_refresh(socket)

    {:ok, socket}
  end

  def render(assigns) do
    ~L"""
      <h1>Sales Dashboard</h1>

      <center>
        <form phx-change="select-refresh">
          <label>Update every </label>
          <select name="refresh">
            <%= options_for_select(refresh_options(), @refresh) %>
          </select>
          <p>Last Updated <strong><%= Timex.format!(@last_updated_at, "%H:%M:%S", :strftime) %></strong></p>
        </form>
      </center>

      <div id="dashboard">
        <div class="stats">
          <div class="stat">
            <span class="value">
              <%= @new_orders %>
            </span>
            <span class="name">
              New Orders
            </span>
          </div>
          <div class="stat">
            <span class="value">
              $<%= @sales_amount %>
            </span>
            <span class="name">
              Sales Amount
            </span>
          </div>
          <div class="stat">
            <span class="value">
              <%= @satisfaction %>%
            </span>
            <span class="name">
              Satisfaction
            </span>
          </div>
        </div>
        <button phx-click="refresh">
          <img src="images/refresh.svg">
          Refresh
        </button>
    </div>
    """
  end

  def handle_event("refresh", _, socket) do
    socket = assign_stats(socket)
    {:noreply, socket}
  end

  def handle_info(:tick, socket) do
    socket = assign_stats(socket)
    schedule_refresh(socket)
    {:noreply, socket}
  end

  def assign_stats(socket) do
    assign(socket,
      new_orders: Sales.new_orders(),
      sales_amount: Sales.sales_amount(),
      satisfaction: Sales.satisfaction(),
      last_updated_at: :calendar.local_time()
    )
  end

  def handle_event("select-refresh", %{"refresh" => refresh}, socket) do
    refresh = String.to_integer(refresh)
    socket = assign(socket, refresh: refresh)
    {:noreply, socket}
  end

  defp schedule_refresh(socket) do
    Process.send_after(self(), :tick, socket.assigns.refresh * 1000)
  end
  
  defp refresh_options do
    [{"1s", 1}, {"5s", 5}, {"15s", 15}, {"30s", 30}, {"60s", 60}]
  end  
end
