class TimeEntriesController < ApplicationController
  def index
    @entries = TimeEntry.order(created_at: :desc)
  end

  def new
    @entry = TimeEntry.new
  end

  def create
    @entry = TimeEntry.new(entry_params)
    @entry.started_at = Time.current
    if @entry.save
      redirect_to time_entries_path, notice: "Actividad iniciada"
    else
      render :new
    end
  end

  def stop
    @entry = TimeEntry.find(params[:id])
    @entry.update(ended_at: Time.current)
     redirect_to time_entries_path, notice: "Actividad detenida."
  end

  def destroy
    @entry = TimeEntry.find(params[:id])
    @entry.destroy
    redirect_to time_entries_path, notice: "Actividad eliminada."
  end

private

  def entry_params
    params.require(:time_entry).permit(:activity)
  end
end
