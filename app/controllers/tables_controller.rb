class TablesController < ApplicationController
    def show
      @table = Table.find(params[:id])
      @reservations = @table.reservations
    end
  end
  