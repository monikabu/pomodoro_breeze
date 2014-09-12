class Pomodoro::TaskList::Breeze < Pomodoro::TaskList::Base

  def initialize email, password
    @email = email
    @client = RestClient::Resource.new("http://api.breeze.pm", :user => @email, :password => password)
  end

  def tasks
    @tasks ||= fetch_tasks
  end

  def dependent_tasks
    tasks.select { |task| dependent?(task) }
  end

  private

    def get(resource)
      JSON.parse @client[resource + ".json"].get
    end

    def fetch_tasks
      tasks = []
      get("projects").each do |project|
        tasks += get("projects/#{project['id']}/cards")[0]["cards"]
      end
      filter_user_tasks(tasks)
    end

    def dependent?(task)
      task["users"].count > 1
    end

    def filter_user_tasks(tasks)
      tasks.select do |task|
        task["users"].find { |user| user["email"] == @email }
      end
    end

end
