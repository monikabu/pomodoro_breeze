class Pomodoro::TaskList::Breeze < Pomodoro::TaskList::Base

  def initialize user, password
    @user, @password = user, password
  end

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

  private

    def get resource
      RestClient.get("http://#{@user}:#{@password}@api.breeze.pm/" + resource + ".json")
    end

end
