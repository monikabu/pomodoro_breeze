class Pomodoro::TaskList::Base

  def tasks
    @tasks ||= fetch_tasks
  end

  def dependent_tasks
    tasks.select { |task| dependent?(task) }
  end

  def fetch_tasks
  end

  def dependent?(task)
  end

end
